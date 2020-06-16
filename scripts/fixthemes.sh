#!/bin/bash
#
# DESLIGA CACHE DE THEMES DURANTE DESENVOLVIMENTO DE THEME
#
# <theme>
#     ...
#     <cacheThemes>false</cacheThemes>
#     <cacheTemplates>false</cacheTemplates>
#     ...
# </theme>
echo "DESLIGANDO THEME CACHE"
sed "s#<staticMaxAge>.*</staticMaxAge>#<staticMaxAge>-1</staticMaxAge>#g" -i /opt/jboss/keycloak/standalone/configuration/standalone.xml
sed "s#<cacheThemes>.*</cacheThemes>#<cacheThemes>false</cacheThemes>#g" -i /opt/jboss/keycloak/standalone/configuration/standalone.xml
sed "s#<cacheTemplates>.*</cacheTemplates>#<cacheTemplates>false</cacheTemplates>#g" -i /opt/jboss/keycloak/standalone/configuration/standalone.xml
