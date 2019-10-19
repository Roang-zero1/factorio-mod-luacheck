# GitHub Action for luacheck

This action will run your mod code through [luacheck](https://github.com/mpeterv/luacheck).

## Usage

This action can be used with a repository contain a Factorio mod at base level.

The action can be used as follows:

```yaml
on: push
name: Check & Release
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: lint
        uses: Roang-zero1/factorio-mod-luacheck@master
        env:
          LUACHECKRC_URL: https://raw.githubusercontent.com/Nexela/Factorio-luacheckrc/0.17/.luacheckrc
```

## Sample Workflow

A sample workflow that uses this action can be found at [Roang-zero1/factorio-mod-actions](https://github.com/Roang-zero1/factorio-mod-actions/blob/master/sample/push-check-release.yml)

## Environment Variables

- `LUACHECKRC_URL` use the luacheckrc at the provided URL instead of the one in the project

## Recommended luacheckrc

For current luacheckrc to use with factorio I recommend [Nexela/Factorio-luacheckrc](https://github.com/Nexela/Factorio-luacheckrc)
