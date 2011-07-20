function java5u22() {
export JAVA_HOME=/usr/java/jdk1.5.0_22
export PATH=${JAVA_HOME}/bin:${PATH}
}

function java6u23() {

export JAVA_HOME=/usr/java/jdk1.6.0_22                                                                                                                                
export PATH=${JAVA_HOME}/bin:${PATH}
}

function java5() {
java5u22
}

function java6() {
java6u23
}


# default
java6

