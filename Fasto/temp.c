#include <mono/metadata/mono-config.h>
#include <mono/metadata/assembly.h>

extern const unsigned char assembly_data_Fasto_exe [];
static const MonoBundledAssembly assembly_bundle_Fasto_exe = {"Fasto.exe", assembly_data_Fasto_exe, 26112};
extern const unsigned char assembly_data_AbSyn_dll [];
static const MonoBundledAssembly assembly_bundle_AbSyn_dll = {"AbSyn.dll", assembly_data_AbSyn_dll, 106496};
extern const unsigned char assembly_data_CallGraph_dll [];
static const MonoBundledAssembly assembly_bundle_CallGraph_dll = {"CallGraph.dll", assembly_data_CallGraph_dll, 11264};
extern const unsigned char assembly_data_CodeGen_dll [];
static const MonoBundledAssembly assembly_bundle_CodeGen_dll = {"CodeGen.dll", assembly_data_CodeGen_dll, 35328};
extern const unsigned char assembly_data_CopyConstPropFold_dll [];
static const MonoBundledAssembly assembly_bundle_CopyConstPropFold_dll = {"CopyConstPropFold.dll", assembly_data_CopyConstPropFold_dll, 17920};
extern const unsigned char assembly_data_DeadBindingRemoval_dll [];
static const MonoBundledAssembly assembly_bundle_DeadBindingRemoval_dll = {"DeadBindingRemoval.dll", assembly_data_DeadBindingRemoval_dll, 14848};
extern const unsigned char assembly_data_DeadFunctionRemoval_dll [];
static const MonoBundledAssembly assembly_bundle_DeadFunctionRemoval_dll = {"DeadFunctionRemoval.dll", assembly_data_DeadFunctionRemoval_dll, 5120};
extern const unsigned char assembly_data_Inlining_dll [];
static const MonoBundledAssembly assembly_bundle_Inlining_dll = {"Inlining.dll", assembly_data_Inlining_dll, 11264};
extern const unsigned char assembly_data_Interpreter_dll [];
static const MonoBundledAssembly assembly_bundle_Interpreter_dll = {"Interpreter.dll", assembly_data_Interpreter_dll, 26624};
extern const unsigned char assembly_data_Lexer_dll [];
static const MonoBundledAssembly assembly_bundle_Lexer_dll = {"Lexer.dll", assembly_data_Lexer_dll, 38912};
extern const unsigned char assembly_data_Mips_dll [];
static const MonoBundledAssembly assembly_bundle_Mips_dll = {"Mips.dll", assembly_data_Mips_dll, 65024};
extern const unsigned char assembly_data_Parser_dll [];
static const MonoBundledAssembly assembly_bundle_Parser_dll = {"Parser.dll", assembly_data_Parser_dll, 109568};
extern const unsigned char assembly_data_RegAlloc_dll [];
static const MonoBundledAssembly assembly_bundle_RegAlloc_dll = {"RegAlloc.dll", assembly_data_RegAlloc_dll, 33792};
extern const unsigned char assembly_data_SymTab_dll [];
static const MonoBundledAssembly assembly_bundle_SymTab_dll = {"SymTab.dll", assembly_data_SymTab_dll, 12288};
extern const unsigned char assembly_data_TypeChecker_dll [];
static const MonoBundledAssembly assembly_bundle_TypeChecker_dll = {"TypeChecker.dll", assembly_data_TypeChecker_dll, 24576};
extern const unsigned char assembly_data_FSharp_PowerPack_dll [];
static const MonoBundledAssembly assembly_bundle_FSharp_PowerPack_dll = {"FSharp.PowerPack.dll", assembly_data_FSharp_PowerPack_dll, 690176};

static const MonoBundledAssembly *bundled [] = {
	&assembly_bundle_Fasto_exe,
	&assembly_bundle_AbSyn_dll,
	&assembly_bundle_CallGraph_dll,
	&assembly_bundle_CodeGen_dll,
	&assembly_bundle_CopyConstPropFold_dll,
	&assembly_bundle_DeadBindingRemoval_dll,
	&assembly_bundle_DeadFunctionRemoval_dll,
	&assembly_bundle_Inlining_dll,
	&assembly_bundle_Interpreter_dll,
	&assembly_bundle_Lexer_dll,
	&assembly_bundle_Mips_dll,
	&assembly_bundle_Parser_dll,
	&assembly_bundle_RegAlloc_dll,
	&assembly_bundle_SymTab_dll,
	&assembly_bundle_TypeChecker_dll,
	&assembly_bundle_FSharp_PowerPack_dll,
	NULL
};

static char *image_name = "Fasto.exe";

static void install_dll_config_files (void) {

}

static const char *config_dir = NULL;
void mono_mkbundle_init ()
{
	install_dll_config_files ();
	mono_register_bundled_assemblies(bundled);
}
int mono_main (int argc, char* argv[]);

#include <stdlib.h>
#include <string.h>
#ifdef _WIN32
#include <windows.h>
#endif

static char **mono_options = NULL;

static int count_mono_options_args (void)
{
	const char *e = getenv ("MONO_BUNDLED_OPTIONS");
	const char *p, *q;
	int i, n;

	if (e == NULL)
		return 0;

	/* Don't bother with any quoting here. It is unlikely one would
	 * want to pass options containing spaces anyway.
	 */

	p = e;
	n = 1;
	while ((q = strchr (p, ' ')) != NULL) {
		n++;
		p = q + 1;
	}

	mono_options = malloc (sizeof (char *) * (n + 1));

	p = e;
	i = 0;
	while ((q = strchr (p, ' ')) != NULL) {
		mono_options[i] = malloc ((q - p) + 1);
		memcpy (mono_options[i], p, q - p);
		mono_options[i][q - p] = '\0';
		i++;
		p = q + 1;
	}
	mono_options[i++] = strdup (p);
	mono_options[i] = NULL;

	return n;
}


int main (int argc, char* argv[])
{
	char **newargs;
	int i, k = 0;

	newargs = (char **) malloc (sizeof (char *) * (argc + 2 + count_mono_options_args ()));

	newargs [k++] = argv [0];

	if (mono_options != NULL) {
		i = 0;
		while (mono_options[i] != NULL)
			newargs[k++] = mono_options[i++];
	}

	newargs [k++] = image_name;

	for (i = 1; i < argc; i++) {
		newargs [k++] = argv [i];
	}
	newargs [k] = NULL;
	
	if (config_dir != NULL && getenv ("MONO_CFG_DIR") == NULL)
		mono_set_dirs (getenv ("MONO_PATH"), config_dir);
	
	mono_mkbundle_init();

	return mono_main (k, newargs);
}
