#!/bin/bash

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

    echo "Passed environment variables"
    cat ~/passed_env_vars.log

    # create dynamic apache vhost file for each server name env variable
    if [ ! -z "${SERVER_NAME1}" ]; then
        echo "Setup proxy config for SERVER_NAME1 and PROXY_URL1"
        cp /scripts/custom_proxy.template /tmp/custom_proxy1
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME1}';g' /tmp/custom_proxy1
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL1}';g' /tmp/custom_proxy1
        cat /tmp/custom_proxy1 > /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME2}" ]; then
        echo "Setup proxy config for SERVER_NAME2 and PROXY_URL2"
        cp /scripts/custom_proxy.template /tmp/custom_proxy2
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME2}';g' /tmp/custom_proxy2
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL2}';g' /tmp/custom_proxy2
        cat /tmp/custom_proxy2 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME3}" ]; then
        echo "Setup proxy config for SERVER_NAME3 and PROXY_URL3"
        cp /scripts/custom_proxy.template /tmp/custom_proxy3
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME3}';g' /tmp/custom_proxy3
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL3}';g' /tmp/custom_proxy3
        cat /tmp/custom_proxy3 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME4}" ]; then
        echo "Setup proxy config for SERVER_NAME4 and PROXY_URL4"
        cp /scripts/custom_proxy.template /tmp/custom_proxy4
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME4}';g' /tmp/custom_proxy4
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL4}';g' /tmp/custom_proxy4
        cat /tmp/custom_proxy4 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME5}" ]; then
        echo "Setup proxy config for SERVER_NAME5 and PROXY_URL5"
        cp /scripts/custom_proxy.template /tmp/custom_proxy5
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME5}';g' /tmp/custom_proxy5
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL5}';g' /tmp/custom_proxy5
        cat /tmp/custom_proxy5 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME6}" ]; then
        echo "Setup proxy config for SERVER_NAME6 and PROXY_URL6"
        cp /scripts/custom_proxy.template /tmp/custom_proxy6
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME6}';g' /tmp/custom_proxy6
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL6}';g' /tmp/custom_proxy6
        cat /tmp/custom_proxy6 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME7}" ]; then
        echo "Setup proxy config for SERVER_NAME7 and PROXY_URL7"
        cp /scripts/custom_proxy.template /tmp/custom_proxy7
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME7}';g' /tmp/custom_proxy7
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL7}';g' /tmp/custom_proxy7
        cat /tmp/custom_proxy7 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME8}" ]; then
        echo "Setup proxy config for SERVER_NAME8 and PROXY_URL8"
        cp /scripts/custom_proxy.template /tmp/custom_proxy8
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME8}';g' /tmp/custom_proxy8
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL8}';g' /tmp/custom_proxy8
        cat /tmp/custom_proxy8 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME9}" ]; then
        echo "Setup proxy config for SERVER_NAME9 and PROXY_URL9"
        cp /scripts/custom_proxy.template /tmp/custom_proxy9
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME9}';g' /tmp/custom_proxy9
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL9}';g' /tmp/custom_proxy9
        cat /tmp/custom_proxy9 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME10}" ]; then
        echo "Setup proxy config for SERVER_NAME10 and PROXY_URL10"
        cp /scripts/custom_proxy.template /tmp/custom_proxy10
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME10}';g' /tmp/custom_proxy10
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL10}';g' /tmp/custom_proxy10
        cat /tmp/custom_proxy10 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME11}" ]; then
        echo "Setup proxy config for SERVER_NAME11 and PROXY_URL11"
        cp /scripts/custom_proxy.template /tmp/custom_proxy11
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME11}';g' /tmp/custom_proxy11
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL11}';g' /tmp/custom_proxy11
        cat /tmp/custom_proxy11 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME12}" ]; then
        echo "Setup proxy config for SERVER_NAME12 and PROXY_URL12"
        cp /scripts/custom_proxy.template /tmp/custom_proxy12
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME12}';g' /tmp/custom_proxy12
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL12}';g' /tmp/custom_proxy12
        cat /tmp/custom_proxy12 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME13}" ]; then
        echo "Setup proxy config for SERVER_NAME13 and PROXY_URL13"
        cp /scripts/custom_proxy.template /tmp/custom_proxy13
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME13}';g' /tmp/custom_proxy13
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL13}';g' /tmp/custom_proxy13
        cat /tmp/custom_proxy13 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME14}" ]; then
        echo "Setup proxy config for SERVER_NAME14 and PROXY_URL14"
        cp /scripts/custom_proxy.template /tmp/custom_proxy14
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME14}';g' /tmp/custom_proxy14
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL14}';g' /tmp/custom_proxy14
        cat /tmp/custom_proxy14 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME15}" ]; then
        echo "Setup proxy config for SERVER_NAME15 and PROXY_URL15"
        cp /scripts/custom_proxy.template /tmp/custom_proxy15
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME15}';g' /tmp/custom_proxy15
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL15}';g' /tmp/custom_proxy15
        cat /tmp/custom_proxy15 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME16}" ]; then
        echo "Setup proxy config for SERVER_NAME16 and PROXY_URL16"
        cp /scripts/custom_proxy.template /tmp/custom_proxy16
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME16}';g' /tmp/custom_proxy16
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL16}';g' /tmp/custom_proxy16
        cat /tmp/custom_proxy16 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME17}" ]; then
        echo "Setup proxy config for SERVER_NAME17 and PROXY_URL17"
        cp /scripts/custom_proxy.template /tmp/custom_proxy17
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME17}';g' /tmp/custom_proxy17
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL17}';g' /tmp/custom_proxy17
        cat /tmp/custom_proxy17 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME18}" ]; then
        echo "Setup proxy config for SERVER_NAME18 and PROXY_URL18"
        cp /scripts/custom_proxy.template /tmp/custom_proxy18
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME18}';g' /tmp/custom_proxy18
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL18}';g' /tmp/custom_proxy18
        cat /tmp/custom_proxy18 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME19}" ]; then
        echo "Setup proxy config for SERVER_NAME19 and PROXY_URL19"
        cp /scripts/custom_proxy.template /tmp/custom_proxy19
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME19}';g' /tmp/custom_proxy19
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL19}';g' /tmp/custom_proxy19
        cat /tmp/custom_proxy19 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi
    if [ ! -z "${SERVER_NAME20}" ]; then
        echo "Setup proxy config for SERVER_NAME20 and PROXY_URL20"
        cp /scripts/custom_proxy.template /tmp/custom_proxy20
        sed -i -E 's;#SERVER_NAME#;'${SERVER_NAME20}';g' /tmp/custom_proxy20
        sed -i -E 's;#PROXY_URL#;'${PROXY_URL20}';g' /tmp/custom_proxy20
        cat /tmp/custom_proxy20 >> /usr/local/apache2/conf/extra/custom_proxy.conf
    fi

    # cleanup tmp files
    echo "Cleanup temp files"
    rm -f /tmp/custom_proxy*
fi

# run apache web server
echo "Run apache/httpd"
httpd-foreground
