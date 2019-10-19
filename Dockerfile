FROM roangzero1/factorio-mod:luarocks5.3-alpine as base

LABEL "repository"="https://github.com/Roang-zero1/factorio-mod-luacheck"
LABEL "homepage"="https://github.com/Roang-zero1/factorio-mod-luacheck"
LABEL "maintainer"="Roang_zero1 <lucas@brandstaetter.tech>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
