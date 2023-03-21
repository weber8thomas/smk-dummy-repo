configfile: "config.yaml"
samples = config["samples"]

rule all:
    input:
        expand("{sample}.ok", sample=samples)

rule touch:
    output:
        touch("{sample}.ok")