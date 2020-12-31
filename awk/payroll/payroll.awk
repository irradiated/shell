BEGIN {
    ind=0
    indTotal=0
    businessTotal=0
    adminTotal=0
    vanTotal=0
    bonus=0
    name=""
}
{
    if (NR == 1)
    {
        printf "Company Payroll Summary (%s)\n", $0
        print "=================================================="
    }

    if (NR != 1)
    {
        for (x=7; x<=NF; ++x)
        {
            bonus += $x
        }

        name = $1 " " $2
        indTotal = ($5 * $6) + bonus
        printf "%-10s\t%-10s\t$%8.2f\n", name, $3, indTotal
        bonus = 0

        #TODO; code to total business, admin, vancouver
    }

}
END {
    print "=================================================="
    
}
