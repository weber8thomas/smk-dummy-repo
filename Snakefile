configfile: "config.yaml"
samples = config["samples"]

rule all:
    input:
        expand("{sample}.ok", sample=samples)

rule sleep:
    output:
        touch("{sample}.sleep")
    shell:
        "sleep 30"


rule touch:
    input:
        "{sample}.sleep"
    output:
        touch("{sample}.ok")