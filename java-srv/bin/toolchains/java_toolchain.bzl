load("@prelude//java:jar_genrule.bzl", "jar_genrule_impl")

java_local_toolchain = rule(
    impl = jar_genrule_impl,
    is_toolchain_rule = True,
    attrs = {
        "command": attrs.string(),
        "labels": attrs.list(attrs.string(), default=[]),
        "cacheable": attrs.bool(default = False),
        "bash": attrs.bool(default = True),
    },
)