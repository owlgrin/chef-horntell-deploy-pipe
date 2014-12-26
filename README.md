# deploy-pipe-cookbook

Deploys the Horntell Pipe on production servers.

## Supported Platforms

Ubuntu 14.04.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['deploy-pipe']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### deploy-pipe::default

Include `deploy-pipe` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[deploy-pipe::default]"
  ]
}
```

## License and Authors

Author:: Mohit Mamoria (<mohit.mamoria@gmail.com>)
