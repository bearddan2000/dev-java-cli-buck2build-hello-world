# Disclaimer
All projects that start with `dev`
are under active development.

This project is in development meaning
it does not produce expected results.

# Problem
Bad arg in toolchain.

# Error
1: Traceback (most recent call last):
    File <builtin>, in <module>
    * prelude/java/jar_genrule.bzl:14, in jar_genrule_impl
        providers = process_genrule(ctx, output_name, None)
    * prelude/genrule.bzl:177, in process_genrule
        cmd = cmd_args(cmd)
  error: Expected `a value implementing CommandLineArgLike (str, Artifact, RunInfo, etc)`, but got `bool`

# Possible solutions
Change attribute values.