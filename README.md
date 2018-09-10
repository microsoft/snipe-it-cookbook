# Snipe-IT Cookbook

| master | develop |
|---|---|
| [![Build status](https://office.visualstudio.com/APEX/_apis/build/status/lab/cookbooks/Snipe-IT%20Cookbook%20CI?branchName=master)](https://office.visualstudio.com/APEX/_build/latest?definitionId=3733) | [![Build status](https://office.visualstudio.com/APEX/_apis/build/status/lab/cookbooks/Snipe-IT%20Cookbook%20CI?branchName=develop)](https://office.visualstudio.com/APEX/_build/latest?definitionId=3733) |

Configure a self-hosted install of the [Snipe-IT](https://snipeitapp.com/) web application using Chef.

## Requirements

### Platforms

- Ubuntu 16.04
- MySQL Server 5.7+

### Chef

- Chef 13.0+

### Cookbooks

- chef-vault
- composer
- nginx

## Attributes

Many of these attributes match the variables in the Environmental Config file for Snipe-IT. For details on all of the variables available, visit [https://snipe-it.readme.io/docs/configuration](https://snipe-it.readme.io/docs/configuration).

### [Basic App Settings](https://snipe-it.readme.io/docs/configuration#required-basic-app-settings)

- `['snipeit']['debug']` - enable debug mode for Snipe-IT. Default is `false`.
- `['snipeit']['doc_root']` - the DocumentRoot for Snipe-IT. Default is `/var/www/snipeit/public`.
- `['snipeit']['locale']` - sets the localization for Snipe-IT. Default is US English - `en`.
- `['snipeit']['path']` - directory where the Snipe-IT repository will be cloned. Default is `/var/www/snipeit`.
- `['snipeit']['timezone']` - [PHP-supported timezone string](http://php.net/manual/en/timezones.php). Default is `US/Pacific`.
- `['snipeit']['url']` - URL that Snipe-IT can be accessed from. Default is `http://localhost`.
- `['snipeit']['version']` - branch or version tag that will be synced from the Snipe-IT repository on GitHub. Default is `master`.
- `['snipeit']['php']['app_key']` - randomly generated `base64` key that will encrypt Laravel data. Default is `nil`.
- `['snipeit']['php']['packages']` - array of packages that are pre-requisites of running Snipe-IT.

### [Database Settings](https://snipe-it.readme.io/docs/configuration#required-database-settings)

- `['snipeit']['database']['domain']` - domain that the MySQL server is hosted on. Default is `corp.yourcompany.com`.
- `['snipeit']['database']['hostname']` - hostname of MySQL server. Default is `node['hostname']`.
- `['snipeit']['database']['name']` - name of the MySQL database. Default is `snipeit`.
- `['snipeit']['database']['dump_path']` - path to the MySQL binary in order to run dumps of the database. Default is `/user/bin`.
- `['snipeit']['database']['username']` - username to connect to the database. Default is `nil`
- `['snipeit']['database']['password']` - password to connect to the database. Default is `nil`
This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit [https://cla.microsoft.com](https://cla.microsoft.com).

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
