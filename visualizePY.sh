# keyfile = "androconf.py"

pydeps $1 \
    --reverse -xx androguard.core androguard.decompiler.dad \
    -x pygments networkx asn1crypto lxml pydot \
    --show-deps --max-bacon=$2 \
    -o ${1}_reverse.svg

pydeps $1 \
    -xx androguard.core androguard.decompiler.dad \
    -x pygments networkx asn1crypto lxml pydot \
    --show-deps --max-bacon=$2 \
    -o ${1}_default.svg
