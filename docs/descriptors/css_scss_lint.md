<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please do not update manually -->

<div align="center">
  <a href="https://github.com/sds/scss-lint#readme" target="blank" title="Visit linter Web Site">
    <img src="https://raw.githubusercontent.com/sds/scss-lint/master/logo/horizontal.png" alt="scss-lint" height="150px" class="megalinter-banner">
  </a>
</div>

## scss-lint documentation

- Version in Mega-Linter: **0.59.0**
- Visit [Official Web Site](https://github.com/sds/scss-lint#readme){target=_blank}
- See [How to configure scss-lint rules](https://github.com/sds/scss-lint#configuration){target=_blank}
- See [How to disable scss-lint rules in files](https://stylelint.io/user-guide/ignore-code){target=_blank}

[![scss-lint - GitHub](https://gh-card.dev/repos/sds/scss-lint.svg?fullname=)](https://github.com/sds/scss-lint){target=_blank}

## Configuration in Mega-Linter

- Enable scss-lint by adding `CSS_SCSS_LINT` in [ENABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)
- Disable scss-lint by adding `CSS_SCSS_LINT` in [DISABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)

| Variable                                  | Description                                                                                                                                                                                  | Default value                                    |
|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| CSS_SCSS_LINT_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                     |                                                  |
| CSS_SCSS_LINT_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                           | Include every file                               |
| CSS_SCSS_LINT_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                     | Exclude no file                                  |
| CSS_SCSS_LINT_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                      | `[".scss", ".saas"]`                             |
| CSS_SCSS_LINT_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]` | Include every file                               |
| CSS_SCSS_LINT_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                               | None                                             |
| CSS_SCSS_LINT_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                | None                                             |
| CSS_SCSS_LINT_CONFIG_FILE                 | scss-lint configuration file name</br>Use `LINTER_DEFAULT` to let the linter find it                                                                                                         | `.scss-lint.yml`                                 |
| CSS_SCSS_LINT_RULES_PATH                  | Path where to find linter configuration file                                                                                                                                                 | Workspace folder, then Mega-Linter default rules |
| CSS_SCSS_LINT_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                   | `false`                                          |
| CSS_SCSS_LINT_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                             | `0`                                              |

## IDE Integration

Use scss-lint in your favorite IDE to catch errors before Mega-Linter !

|                                                                   <!-- -->                                                                   | IDE                                                      | Extension Name                                                                        |                                                                                  Install                                                                                   |
|:--------------------------------------------------------------------------------------------------------------------------------------------:|----------------------------------------------------------|---------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/atom.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Atom](https://atom.io/)                                 | [linter-scss-lint](https://atom.io/packages/linter-scss-lint)                         |                                                 [Visit Web Site](https://atom.io/packages/linter-scss-lint){target=_blank}                                                 |
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/idea.ico" alt="" height="32px" class="megalinter-icon"></a>  | [IDEA](https://www.jetbrains.com/products.html#type=ide) | [scss-lint-plugin](https://plugins.jetbrains.com/plugin/7530-scss-lint)               |                        <iframe frameborder="none" width="245px" height="48px" src="https://plugins.jetbrains.com/embeddable/install/7530"></iframe>                        |
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vscode.ico" alt="" height="32px" class="megalinter-icon"></a> | [Visual Studio Code](https://code.visualstudio.com/)     | [scss-lint](https://marketplace.visualstudio.com/items?itemName=adamwalzer.scss-lint) | [![Install in VsCode](https://github.com/nvuillam/mega-linter/raw/master/docs/assets/images/btn_install_vscode.png)](vscode:extension/adamwalzer.scss-lint){target=_blank} |

## Mega-Linter Flavours

This linter is available in the following flavours

|                                                                         <!-- -->                                                                          | Flavor                                                                         | Description                                           | Embedded linters |                                                                                                                                                                                               Info |
|:---------------------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------|:------------------------------------------------------|:----------------:|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/images/mega-linter-square.png" alt="" height="32px" class="megalinter-icon"></a> | [all](https://nvuillam.github.io/mega-linter/supported-linters/)               | Default Mega-Linter Flavor                            |        93        |                             ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/dart.ico" alt="" height="32px" class="megalinter-icon"></a>         | [dart](https://nvuillam.github.io/mega-linter/flavors/dart/)                   | Optimized for DART based projects                     |        40        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-dart/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-dart) |
|    <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/documentation.ico" alt="" height="32px" class="megalinter-icon"></a>    | [documentation](https://nvuillam.github.io/mega-linter/flavors/documentation/) | Mega-Linter for documentation projects                |        39        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-documentation/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-documentation) |
|       <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/dotnet.ico" alt="" height="32px" class="megalinter-icon"></a>        | [dotnet](https://nvuillam.github.io/mega-linter/flavors/dotnet/)               | Optimized for C, C++, C# or VB based projects         |        46        |               ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-dotnet/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-dotnet) |
|         <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/go.ico" alt="" height="32px" class="megalinter-icon"></a>          | [go](https://nvuillam.github.io/mega-linter/flavors/go/)                       | Optimized for GO based projects                       |        41        |                       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-go/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-go) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/java.ico" alt="" height="32px" class="megalinter-icon"></a>         | [java](https://nvuillam.github.io/mega-linter/flavors/java/)                   | Optimized for JAVA based projects                     |        41        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-java/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-java) |
|     <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/javascript.ico" alt="" height="32px" class="megalinter-icon"></a>      | [javascript](https://nvuillam.github.io/mega-linter/flavors/javascript/)       | Optimized for JAVASCRIPT or TYPESCRIPT based projects |        48        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-javascript/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-javascript) |
|         <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/php.ico" alt="" height="32px" class="megalinter-icon"></a>         | [php](https://nvuillam.github.io/mega-linter/flavors/php/)                     | Optimized for PHP based projects                      |        43        |                     ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-php/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-php) |
|       <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/python.ico" alt="" height="32px" class="megalinter-icon"></a>        | [python](https://nvuillam.github.io/mega-linter/flavors/python/)               | Optimized for PYTHON based projects                   |        48        |               ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-python/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-python) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/ruby.ico" alt="" height="32px" class="megalinter-icon"></a>         | [ruby](https://nvuillam.github.io/mega-linter/flavors/ruby/)                   | Optimized for RUBY based projects                     |        40        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-ruby/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-ruby) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/rust.ico" alt="" height="32px" class="megalinter-icon"></a>         | [rust](https://nvuillam.github.io/mega-linter/flavors/rust/)                   | Optimized for RUST based projects                     |        40        |                   ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-rust/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-rust) |
|     <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/salesforce.ico" alt="" height="32px" class="megalinter-icon"></a>      | [salesforce](https://nvuillam.github.io/mega-linter/flavors/salesforce/)       | Optimized for Salesforce based projects               |        42        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-salesforce/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-salesforce) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/scala.ico" alt="" height="32px" class="megalinter-icon"></a>        | [scala](https://nvuillam.github.io/mega-linter/flavors/scala/)                 | Optimized for SCALA based projects                    |        40        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-scala/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-scala) |
|        <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/swift.ico" alt="" height="32px" class="megalinter-icon"></a>        | [swift](https://nvuillam.github.io/mega-linter/flavors/swift/)                 | Optimized for SWIFT based projects                    |        40        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-swift/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-swift) |
|      <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/terraform.ico" alt="" height="32px" class="megalinter-icon"></a>      | [terraform](https://nvuillam.github.io/mega-linter/flavors/terraform/)         | Optimized for TERRAFORM based projects                |        44        |         ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/nvuillam/mega-linter-terraform/v4) ![Docker Pulls](https://img.shields.io/docker/pulls/nvuillam/mega-linter-terraform) |

## Behind the scenes

### How are identified applicable files

- File extensions: `.scss`, `.saas`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- scss-lint is called one time by identified file

### Example calls

```shell
scss-lint myfile.scss
```

```shell
scss-lint -config .scss-lint.yml myfile.scss
```


### Help content

```shell
Usage: scss-lint [options] [scss-files]
    -f, --format Formatter           Specify how to display lints
    -r, --require path               Require Ruby file
    -i, --include-linter linter,...  Specify which linters you want to run
    -x, --exclude-linter linter,...  Specify which linters you don't want to run
    -c, --config config-file         Specify which configuration file you want to use
    -e, --exclude file,...           List of file names to exclude
        --stdin-file-path file-path  Specify the path to assume for the file passed via STDIN
    -o, --out path                   Write output to a file instead of STDOUT
        --[no-]color                 Force output to be colorized
        --show-formatters            Shows available formatters
        --show-linters               Display available linters
    -h, --help                       Display help documentation
    -v, --version                    Display version

```

### Installation on mega-linter Docker image

- GEM packages (Ruby) :
  - [scss_lint](https://rubygems.org/gems/scss_lint)

### Example success log

```shell
Results of scss-lint linter (version 0.59.0)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/css_scss_lint/
-----------------------------------------------

[SUCCESS] .automation/test/scss/scss_good_01.scss
    

```

### Example error log

```shell
Results of scss-lint linter (version 0.59.0)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/css_scss_lint/
-----------------------------------------------

[ERROR] .automation/test/scss/scss_bad_01.scss
    .automation/test/scss/scss_bad_01.scss:15:1 [E] Syntax: Syntax Error: Invalid CSS after "  }": expected selector or at-rule, was "}"

```
