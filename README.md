# GitHub Action for luacheck

This action will run your mod code through [luacheck](https://github.com/mpeterv/luacheck).

## Usage

This action can be used with a repository contain a Factorio mod at base level.

The action can be used as follows:

```github-actions
action "check mod" {
  uses = "Roang-zero1/factorio-mod-luacheck@main"
}
```

## Sample Workflow

A sample workflow that uses this action can be found at [Roang-zero1/factorio-mod-actions](https://github.com/Roang-zero1/factorio-mod-actions/blob/master/sample/main.workflow)

## Environment Variables

* `LUACHECKRC_URL` use the luacheckrc at the provided URL instead of the one in the project

## Recommended luacheckrc

For current luacheckrc to use with factorio I recommend [Nexela/Factorio-luacheckrc](https://github.com/Nexela/Factorio-luacheckrc)
