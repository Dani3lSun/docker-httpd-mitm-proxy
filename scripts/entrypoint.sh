#!/bin/bash

# add proxy entry to conf file
add_proxy_entry () {
    ENTRY_NO=$1
    SERVER_NAME=$2
    PROXY_URL=$3

    echo "Setup proxy config for SERVER_NAME${ENTRY_NO} and PROXY_URL${ENTRY_NO}"
    cp /scripts/custom_proxy.template /tmp/custom_proxy_$ENTRY_NO
    sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME}';g' /tmp/custom_proxy_$ENTRY_NO
    sed -i -E 's;#PROXY_URL#;'${PROXY_URL}';g' /tmp/custom_proxy_$ENTRY_NO
    if [ ${ENTRY_NO} = 1 ]; then
        cat /tmp/custom_proxy_$ENTRY_NO > /usr/local/apache2/conf/extra/custom_proxy.conf
    else
        cat /tmp/custom_proxy_$ENTRY_NO >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
}

# only create proxy conf if not already there
if [ ! -f /usr/local/apache2/conf/extra/custom_proxy.conf ]; then
    # validations
    if [ -z "${SERVER_NAME1}" ]; then
        echo "Environment variable SERVER_NAME1 must be defined!"
        exit 1
    fi
    if [ -z "${PROXY_URL1}" ]; then
        echo "Environment variable PROXY_URL1 must be defined!"
        exit 1
    fi

    # log passed parameters
    echo "SERVER_NAME1: ${SERVER_NAME1}" > ~/passed_env_vars.log
    echo "SERVER_NAME2: ${SERVER_NAME2}" >> ~/passed_env_vars.log
    echo "SERVER_NAME3: ${SERVER_NAME3}" >> ~/passed_env_vars.log
    echo "SERVER_NAME4: ${SERVER_NAME4}" >> ~/passed_env_vars.log
    echo "SERVER_NAME5: ${SERVER_NAME5}" >> ~/passed_env_vars.log
    echo "SERVER_NAME6: ${SERVER_NAME6}" >> ~/passed_env_vars.log
    echo "SERVER_NAME7: ${SERVER_NAME7}" >> ~/passed_env_vars.log
    echo "SERVER_NAME8: ${SERVER_NAME8}" >> ~/passed_env_vars.log
    echo "SERVER_NAME9: ${SERVER_NAME9}" >> ~/passed_env_vars.log
    echo "SERVER_NAME10: ${SERVER_NAME10}" >> ~/passed_env_vars.log
    echo "SERVER_NAME11: ${SERVER_NAME11}" >> ~/passed_env_vars.log
    echo "SERVER_NAME12: ${SERVER_NAME12}" >> ~/passed_env_vars.log
    echo "SERVER_NAME13: ${SERVER_NAME13}" >> ~/passed_env_vars.log
    echo "SERVER_NAME14: ${SERVER_NAME14}" >> ~/passed_env_vars.log
    echo "SERVER_NAME15: ${SERVER_NAME15}" >> ~/passed_env_vars.log
    echo "SERVER_NAME16: ${SERVER_NAME16}" >> ~/passed_env_vars.log
    echo "SERVER_NAME17: ${SERVER_NAME17}" >> ~/passed_env_vars.log
    echo "SERVER_NAME18: ${SERVER_NAME18}" >> ~/passed_env_vars.log
    echo "SERVER_NAME19: ${SERVER_NAME19}" >> ~/passed_env_vars.log
    echo "SERVER_NAME20: ${SERVER_NAME20}" >> ~/passed_env_vars.log
    echo "SERVER_NAME21: ${SERVER_NAME21}" >> ~/passed_env_vars.log
    echo "SERVER_NAME22: ${SERVER_NAME22}" >> ~/passed_env_vars.log
    echo "SERVER_NAME23: ${SERVER_NAME23}" >> ~/passed_env_vars.log
    echo "SERVER_NAME24: ${SERVER_NAME24}" >> ~/passed_env_vars.log
    echo "SERVER_NAME25: ${SERVER_NAME25}" >> ~/passed_env_vars.log
    echo "SERVER_NAME26: ${SERVER_NAME26}" >> ~/passed_env_vars.log
    echo "SERVER_NAME27: ${SERVER_NAME27}" >> ~/passed_env_vars.log
    echo "SERVER_NAME28: ${SERVER_NAME28}" >> ~/passed_env_vars.log
    echo "SERVER_NAME29: ${SERVER_NAME29}" >> ~/passed_env_vars.log
    echo "SERVER_NAME30: ${SERVER_NAME30}" >> ~/passed_env_vars.log
    echo "SERVER_NAME31: ${SERVER_NAME31}" >> ~/passed_env_vars.log
    echo "SERVER_NAME32: ${SERVER_NAME32}" >> ~/passed_env_vars.log
    echo "SERVER_NAME33: ${SERVER_NAME33}" >> ~/passed_env_vars.log
    echo "SERVER_NAME34: ${SERVER_NAME34}" >> ~/passed_env_vars.log
    echo "SERVER_NAME35: ${SERVER_NAME35}" >> ~/passed_env_vars.log
    echo "SERVER_NAME36: ${SERVER_NAME36}" >> ~/passed_env_vars.log
    echo "SERVER_NAME37: ${SERVER_NAME37}" >> ~/passed_env_vars.log
    echo "SERVER_NAME38: ${SERVER_NAME38}" >> ~/passed_env_vars.log
    echo "SERVER_NAME39: ${SERVER_NAME39}" >> ~/passed_env_vars.log
    echo "SERVER_NAME40: ${SERVER_NAME40}" >> ~/passed_env_vars.log
    echo "SERVER_NAME41: ${SERVER_NAME41}" >> ~/passed_env_vars.log
    echo "SERVER_NAME42: ${SERVER_NAME42}" >> ~/passed_env_vars.log
    echo "SERVER_NAME43: ${SERVER_NAME43}" >> ~/passed_env_vars.log
    echo "SERVER_NAME44: ${SERVER_NAME44}" >> ~/passed_env_vars.log
    echo "SERVER_NAME45: ${SERVER_NAME45}" >> ~/passed_env_vars.log
    echo "SERVER_NAME46: ${SERVER_NAME46}" >> ~/passed_env_vars.log
    echo "SERVER_NAME47: ${SERVER_NAME47}" >> ~/passed_env_vars.log
    echo "SERVER_NAME48: ${SERVER_NAME48}" >> ~/passed_env_vars.log
    echo "SERVER_NAME49: ${SERVER_NAME49}" >> ~/passed_env_vars.log
    echo "SERVER_NAME50: ${SERVER_NAME50}" >> ~/passed_env_vars.log
    echo "PROXY_URL1: ${PROXY_URL1}" >> ~/passed_env_vars.log
    echo "PROXY_URL2: ${PROXY_URL2}" >> ~/passed_env_vars.log
    echo "PROXY_URL3: ${PROXY_URL3}" >> ~/passed_env_vars.log
    echo "PROXY_URL4: ${PROXY_URL4}" >> ~/passed_env_vars.log
    echo "PROXY_URL5: ${PROXY_URL5}" >> ~/passed_env_vars.log
    echo "PROXY_URL6: ${PROXY_URL6}" >> ~/passed_env_vars.log
    echo "PROXY_URL7: ${PROXY_URL7}" >> ~/passed_env_vars.log
    echo "PROXY_URL8: ${PROXY_URL8}" >> ~/passed_env_vars.log
    echo "PROXY_URL9: ${PROXY_URL9}" >> ~/passed_env_vars.log
    echo "PROXY_URL10: ${PROXY_URL10}" >> ~/passed_env_vars.log
    echo "PROXY_URL11: ${PROXY_URL11}" >> ~/passed_env_vars.log
    echo "PROXY_URL12: ${PROXY_URL12}" >> ~/passed_env_vars.log
    echo "PROXY_URL13: ${PROXY_URL13}" >> ~/passed_env_vars.log
    echo "PROXY_URL14: ${PROXY_URL14}" >> ~/passed_env_vars.log
    echo "PROXY_URL15: ${PROXY_URL15}" >> ~/passed_env_vars.log
    echo "PROXY_URL16: ${PROXY_URL16}" >> ~/passed_env_vars.log
    echo "PROXY_URL17: ${PROXY_URL17}" >> ~/passed_env_vars.log
    echo "PROXY_URL18: ${PROXY_URL18}" >> ~/passed_env_vars.log
    echo "PROXY_URL19: ${PROXY_URL19}" >> ~/passed_env_vars.log
    echo "PROXY_URL20: ${PROXY_URL20}" >> ~/passed_env_vars.log
    echo "PROXY_URL21: ${PROXY_URL21}" >> ~/passed_env_vars.log
    echo "PROXY_URL22: ${PROXY_URL22}" >> ~/passed_env_vars.log
    echo "PROXY_URL23: ${PROXY_URL23}" >> ~/passed_env_vars.log
    echo "PROXY_URL24: ${PROXY_URL24}" >> ~/passed_env_vars.log
    echo "PROXY_URL25: ${PROXY_URL25}" >> ~/passed_env_vars.log
    echo "PROXY_URL26: ${PROXY_URL26}" >> ~/passed_env_vars.log
    echo "PROXY_URL27: ${PROXY_URL27}" >> ~/passed_env_vars.log
    echo "PROXY_URL28: ${PROXY_URL28}" >> ~/passed_env_vars.log
    echo "PROXY_URL29: ${PROXY_URL29}" >> ~/passed_env_vars.log
    echo "PROXY_URL30: ${PROXY_URL30}" >> ~/passed_env_vars.log
    echo "PROXY_URL31: ${PROXY_URL31}" >> ~/passed_env_vars.log
    echo "PROXY_URL32: ${PROXY_URL32}" >> ~/passed_env_vars.log
    echo "PROXY_URL33: ${PROXY_URL33}" >> ~/passed_env_vars.log
    echo "PROXY_URL34: ${PROXY_URL34}" >> ~/passed_env_vars.log
    echo "PROXY_URL35: ${PROXY_URL35}" >> ~/passed_env_vars.log
    echo "PROXY_URL36: ${PROXY_URL36}" >> ~/passed_env_vars.log
    echo "PROXY_URL37: ${PROXY_URL37}" >> ~/passed_env_vars.log
    echo "PROXY_URL38: ${PROXY_URL38}" >> ~/passed_env_vars.log
    echo "PROXY_URL39: ${PROXY_URL39}" >> ~/passed_env_vars.log
    echo "PROXY_URL40: ${PROXY_URL40}" >> ~/passed_env_vars.log
    echo "PROXY_URL41: ${PROXY_URL41}" >> ~/passed_env_vars.log
    echo "PROXY_URL42: ${PROXY_URL42}" >> ~/passed_env_vars.log
    echo "PROXY_URL43: ${PROXY_URL43}" >> ~/passed_env_vars.log
    echo "PROXY_URL44: ${PROXY_URL44}" >> ~/passed_env_vars.log
    echo "PROXY_URL45: ${PROXY_URL45}" >> ~/passed_env_vars.log
    echo "PROXY_URL46: ${PROXY_URL46}" >> ~/passed_env_vars.log
    echo "PROXY_URL47: ${PROXY_URL47}" >> ~/passed_env_vars.log
    echo "PROXY_URL48: ${PROXY_URL48}" >> ~/passed_env_vars.log
    echo "PROXY_URL49: ${PROXY_URL49}" >> ~/passed_env_vars.log
    echo "PROXY_URL50: ${PROXY_URL50}" >> ~/passed_env_vars.log


    echo "Passed environment variables"
    cat ~/passed_env_vars.log

    # create dynamic apache vhost file for each server name env variable
    if [ ! -z "${SERVER_NAME1}" ]; then
        add_proxy_entry 1 ${SERVER_NAME1} ${PROXY_URL1}
    fi
    if [ ! -z "${SERVER_NAME2}" ]; then
        add_proxy_entry 2 ${SERVER_NAME2} ${PROXY_URL2}
    fi
    if [ ! -z "${SERVER_NAME3}" ]; then
        add_proxy_entry 3 ${SERVER_NAME3} ${PROXY_URL3}
    fi
    if [ ! -z "${SERVER_NAME4}" ]; then
        add_proxy_entry 4 ${SERVER_NAME4} ${PROXY_URL4}
    fi
    if [ ! -z "${SERVER_NAME5}" ]; then
        add_proxy_entry 5 ${SERVER_NAME5} ${PROXY_URL5}
    fi
    if [ ! -z "${SERVER_NAME6}" ]; then
        add_proxy_entry 6 ${SERVER_NAME6} ${PROXY_URL6}
    fi
    if [ ! -z "${SERVER_NAME7}" ]; then
        add_proxy_entry 7 ${SERVER_NAME7} ${PROXY_URL7}
    fi
    if [ ! -z "${SERVER_NAME8}" ]; then
        add_proxy_entry 8 ${SERVER_NAME8} ${PROXY_URL8}
    fi
    if [ ! -z "${SERVER_NAME9}" ]; then
        add_proxy_entry 9 ${SERVER_NAME9} ${PROXY_URL9}
    fi
    if [ ! -z "${SERVER_NAME10}" ]; then
        add_proxy_entry 10 ${SERVER_NAME10} ${PROXY_URL10}
    fi
    if [ ! -z "${SERVER_NAME11}" ]; then
        add_proxy_entry 11 ${SERVER_NAME11} ${PROXY_URL11}
    fi
    if [ ! -z "${SERVER_NAME12}" ]; then
        add_proxy_entry 12 ${SERVER_NAME12} ${PROXY_URL12}
    fi
    if [ ! -z "${SERVER_NAME13}" ]; then
        add_proxy_entry 13 ${SERVER_NAME13} ${PROXY_URL13}
    fi
    if [ ! -z "${SERVER_NAME14}" ]; then
        add_proxy_entry 14 ${SERVER_NAME14} ${PROXY_URL14}
    fi
    if [ ! -z "${SERVER_NAME15}" ]; then
        add_proxy_entry 15 ${SERVER_NAME15} ${PROXY_URL15}
    fi
    if [ ! -z "${SERVER_NAME16}" ]; then
        add_proxy_entry 16 ${SERVER_NAME16} ${PROXY_URL16}
    fi
    if [ ! -z "${SERVER_NAME17}" ]; then
        add_proxy_entry 17 ${SERVER_NAME17} ${PROXY_URL17}
    fi
    if [ ! -z "${SERVER_NAME18}" ]; then
        add_proxy_entry 18 ${SERVER_NAME18} ${PROXY_URL18}
    fi
    if [ ! -z "${SERVER_NAME19}" ]; then
        add_proxy_entry 19 ${SERVER_NAME19} ${PROXY_URL19}
    fi
    if [ ! -z "${SERVER_NAME20}" ]; then
        add_proxy_entry 20 ${SERVER_NAME20} ${PROXY_URL20}
    fi
    if [ ! -z "${SERVER_NAME21}" ]; then
        add_proxy_entry 21 ${SERVER_NAME21} ${PROXY_URL21}
    fi
    if [ ! -z "${SERVER_NAME22}" ]; then
        add_proxy_entry 22 ${SERVER_NAME22} ${PROXY_URL22}
    fi
    if [ ! -z "${SERVER_NAME23}" ]; then
        add_proxy_entry 23 ${SERVER_NAME23} ${PROXY_URL23}
    fi
    if [ ! -z "${SERVER_NAME24}" ]; then
        add_proxy_entry 24 ${SERVER_NAME24} ${PROXY_URL24}
    fi
    if [ ! -z "${SERVER_NAME25}" ]; then
        add_proxy_entry 25 ${SERVER_NAME25} ${PROXY_URL25}
    fi
    if [ ! -z "${SERVER_NAME26}" ]; then
        add_proxy_entry 26 ${SERVER_NAME26} ${PROXY_URL26}
    fi
    if [ ! -z "${SERVER_NAME27}" ]; then
        add_proxy_entry 27 ${SERVER_NAME27} ${PROXY_URL27}
    fi
    if [ ! -z "${SERVER_NAME28}" ]; then
        add_proxy_entry 28 ${SERVER_NAME28} ${PROXY_URL28}
    fi
    if [ ! -z "${SERVER_NAME29}" ]; then
        add_proxy_entry 29 ${SERVER_NAME29} ${PROXY_URL29}
    fi
    if [ ! -z "${SERVER_NAME30}" ]; then
        add_proxy_entry 30 ${SERVER_NAME30} ${PROXY_URL30}
    fi
    if [ ! -z "${SERVER_NAME31}" ]; then
        add_proxy_entry 31 ${SERVER_NAME31} ${PROXY_URL31}
    fi
    if [ ! -z "${SERVER_NAME32}" ]; then
        add_proxy_entry 32 ${SERVER_NAME32} ${PROXY_URL32}
    fi
    if [ ! -z "${SERVER_NAME33}" ]; then
        add_proxy_entry 33 ${SERVER_NAME33} ${PROXY_URL33}
    fi
    if [ ! -z "${SERVER_NAME34}" ]; then
        add_proxy_entry 34 ${SERVER_NAME34} ${PROXY_URL34}
    fi
    if [ ! -z "${SERVER_NAME35}" ]; then
        add_proxy_entry 35 ${SERVER_NAME35} ${PROXY_URL35}
    fi
    if [ ! -z "${SERVER_NAME36}" ]; then
        add_proxy_entry 36 ${SERVER_NAME36} ${PROXY_URL36}
    fi
    if [ ! -z "${SERVER_NAME37}" ]; then
        add_proxy_entry 37 ${SERVER_NAME37} ${PROXY_URL37}
    fi
    if [ ! -z "${SERVER_NAME38}" ]; then
        add_proxy_entry 38 ${SERVER_NAME38} ${PROXY_URL38}
    fi
    if [ ! -z "${SERVER_NAME39}" ]; then
        add_proxy_entry 39 ${SERVER_NAME39} ${PROXY_URL39}
    fi
    if [ ! -z "${SERVER_NAME40}" ]; then
        add_proxy_entry 40 ${SERVER_NAME40} ${PROXY_URL40}
    fi
    if [ ! -z "${SERVER_NAME41}" ]; then
        add_proxy_entry 41 ${SERVER_NAME41} ${PROXY_URL41}
    fi
    if [ ! -z "${SERVER_NAME42}" ]; then
        add_proxy_entry 42 ${SERVER_NAME42} ${PROXY_URL42}
    fi
    if [ ! -z "${SERVER_NAME43}" ]; then
        add_proxy_entry 43 ${SERVER_NAME43} ${PROXY_URL43}
    fi
    if [ ! -z "${SERVER_NAME44}" ]; then
        add_proxy_entry 44 ${SERVER_NAME44} ${PROXY_URL44}
    fi
    if [ ! -z "${SERVER_NAME45}" ]; then
        add_proxy_entry 45 ${SERVER_NAME45} ${PROXY_URL45}
    fi
    if [ ! -z "${SERVER_NAME46}" ]; then
        add_proxy_entry 46 ${SERVER_NAME46} ${PROXY_URL46}
    fi
    if [ ! -z "${SERVER_NAME47}" ]; then
        add_proxy_entry 47 ${SERVER_NAME47} ${PROXY_URL47}
    fi
    if [ ! -z "${SERVER_NAME48}" ]; then
        add_proxy_entry 48 ${SERVER_NAME48} ${PROXY_URL48}
    fi
    if [ ! -z "${SERVER_NAME49}" ]; then
        add_proxy_entry 49 ${SERVER_NAME49} ${PROXY_URL49}
    fi
    if [ ! -z "${SERVER_NAME50}" ]; then
        add_proxy_entry 50 ${SERVER_NAME50} ${PROXY_URL50}
    fi

    # cleanup tmp files
    echo "Cleanup temp files"
    rm -f /tmp/custom_proxy*
fi

# run apache web server
echo "Run apache/httpd"
httpd-foreground
