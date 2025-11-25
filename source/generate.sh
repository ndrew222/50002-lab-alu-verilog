#!/bin/sh

OUTPUT_FILENAME='rca.v'
RCA_SIZE=32

# module header
{
    echo 'module rca #('
    echo "    parameter SIZE = ${RCA_SIZE}"
    echo ') ('
    echo '    input  [SIZE-1:0] a,'
    echo '    input  [SIZE-1:0] b,'
    echo '    input             cin,'
    echo '    output            cout,'
    echo '    output [SIZE-1:0] s'
    echo ');'
    echo

    INDEX=0
    while [ ${INDEX} -le ${RCA_SIZE} ]; do
        echo "    wire c${INDEX};"
        INDEX=$((INDEX+1))
    done
    echo
    echo "    assign c0 = cin;"
    echo "    assign cout = c$((INDEX-1));"
    echo
} > ${OUTPUT_FILENAME}

{
    INDEX=0
    while [ ${INDEX} -lt ${RCA_SIZE} ]; do
        echo "    fa full_adder_${INDEX}("
        echo "        .a(a[${INDEX}]),"
        echo "        .b(b[${INDEX}]),"
        echo "        .cin(c${INDEX}),"
        echo "        .s(s[${INDEX}]),"
        echo "        .cout(c$((INDEX+1)))"
        echo "    );"
        echo
        INDEX=$((INDEX+1))
    done
    echo "endmodule"
} >> ${OUTPUT_FILENAME}
