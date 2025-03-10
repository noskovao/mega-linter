<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please do not update manually -->
# shellcheck

## shellcheck documentation

- Version in Mega-Linter: **0.7.2**
- Visit [Official Web Site](https://github.com/koalaman/shellcheck#readme){target=_blank}
- See [How to disable shellcheck rules in files](https://github.com/koalaman/shellcheck/wiki/Ignore){target=_blank}
- See [Index of problems detected by shellcheck](https://github.com/koalaman/shellcheck#gallery-of-bad-code){target=_blank}

[![shellcheck - GitHub](https://gh-card.dev/repos/koalaman/shellcheck.svg?fullname=)](https://github.com/koalaman/shellcheck){target=_blank}

## Configuration in Mega-Linter

- Enable shellcheck by adding `BASH_SHELLCHECK` in [ENABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)
- Disable shellcheck by adding `BASH_SHELLCHECK` in [DISABLE_LINTERS variable](https://nvuillam.github.io/mega-linter/configuration/#activation-and-deactivation)

| Variable                                    | Description                                                                                                                                                                                  | Default value                       |
|---------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
| BASH_SHELLCHECK_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                     |                                     |
| BASH_SHELLCHECK_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                           | Include every file                  |
| BASH_SHELLCHECK_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                     | Exclude no file                     |
| BASH_SHELLCHECK_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                      | `[".sh", ".bash", ".dash", ".ksh"]` |
| BASH_SHELLCHECK_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]` | Include every file                  |
| BASH_SHELLCHECK_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                               | None                                |
| BASH_SHELLCHECK_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                | None                                |
| BASH_SHELLCHECK_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                   | `false`                             |
| BASH_SHELLCHECK_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                             | `0`                                 |

## IDE Integration

Use shellcheck in your favorite IDE to catch errors before Mega-Linter !

|                                                                   <!-- -->                                                                    | IDE                                                  | Extension Name                                                                                |                                                                                  Install                                                                                   |
|:---------------------------------------------------------------------------------------------------------------------------------------------:|------------------------------------------------------|-----------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/atom.ico" alt="" height="32px" class="megalinter-icon"></a>   | [Atom](https://atom.io/)                             | [linter-shellcheck](https://github.com/AtomLinter/linter-shellcheck)                          |                                              [Visit Web Site](https://github.com/AtomLinter/linter-shellcheck){target=_blank}                                              |
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/emacs.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Emacs](https://www.gnu.org/software/emacs/)         | [flycheck](https://github.com/flycheck/flycheck)                                              |                                                   [Visit Web Site](https://github.com/flycheck/flycheck){target=_blank}                                                    |
|  <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/emacs.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Emacs](https://www.gnu.org/software/emacs/)         | [flymake-shellcheck](https://github.com/federicotdn/flymake-shellcheck)                       |                                             [Visit Web Site](https://github.com/federicotdn/flymake-shellcheck){target=_blank}                                             |
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/sublime.ico" alt="" height="32px" class="megalinter-icon"></a> | [Sublime Text](https://www.sublimetext.com/)         | [SublimeLinter-shellcheck](https://github.com/SublimeLinter/SublimeLinter-shellcheck)         |                                         [Visit Web Site](https://github.com/SublimeLinter/SublimeLinter-shellcheck){target=_blank}                                         |
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vim.ico" alt="" height="32px" class="megalinter-icon"></a>   | [vim](https://www.vim.org/)                          | [ale](https://github.com/w0rp/ale)                                                            |                                                        [Visit Web Site](https://github.com/w0rp/ale){target=_blank}                                                        |
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vim.ico" alt="" height="32px" class="megalinter-icon"></a>   | [vim](https://www.vim.org/)                          | [neomake](https://github.com/neomake/neomake)                                                 |                                                    [Visit Web Site](https://github.com/neomake/neomake){target=_blank}                                                     |
|   <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vim.ico" alt="" height="32px" class="megalinter-icon"></a>   | [vim](https://www.vim.org/)                          | [syntastic](https://github.com/scrooloose/syntastic)                                          |                                                  [Visit Web Site](https://github.com/scrooloose/syntastic){target=_blank}                                                  |
| <img src="https://github.com/nvuillam/mega-linter/raw/master/docs/assets/icons/vscode.ico" alt="" height="32px" class="megalinter-icon"></a>  | [Visual Studio Code](https://code.visualstudio.com/) | [vscode-shellcheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck) | [![Install in VsCode](https://github.com/nvuillam/mega-linter/raw/master/docs/assets/images/btn_install_vscode.png)](vscode:extension/timonwong.shellcheck){target=_blank} |

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

- File extensions: `.sh`, `.bash`, `.dash`, `.ksh`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- shellcheck is called one time by identified file

### Example calls

```shell
shellcheck --color=auto --external-sources myfile.sh
```


### Help content

```shell
Usage: shellcheck [OPTIONS...] FILES...
  -a                  --check-sourced            Include warnings from sourced files
  -C[WHEN]            --color[=WHEN]             Use color (auto, always, never)
  -i CODE1,CODE2..    --include=CODE1,CODE2..    Consider only given types of warnings
  -e CODE1,CODE2..    --exclude=CODE1,CODE2..    Exclude types of warnings
  -f FORMAT           --format=FORMAT            Output format (checkstyle, diff, gcc, json, json1, quiet, tty)
                      --list-optional            List checks disabled by default
                      --norc                     Don't look for .shellcheckrc files
  -o check1,check2..  --enable=check1,check2..   List of optional checks to enable (or 'all')
  -P SOURCEPATHS      --source-path=SOURCEPATHS  Specify path when looking for sourced files ("SCRIPTDIR" for script's dir)
  -s SHELLNAME        --shell=SHELLNAME          Specify dialect (sh, bash, dash, ksh)
  -S SEVERITY         --severity=SEVERITY        Minimum severity of errors to consider (error, warning, info, style)
  -V                  --version                  Print version information
  -W NUM              --wiki-link-count=NUM      The number of wiki links to show, when applicable
  -x                  --external-sources         Allow 'source' outside of FILES
                      --help                     Show this usage summary and exit

```

### Installation on mega-linter Docker image

- Dockerfile commands :
```dockerfile
RUN wget -qO- "https://github.com/koalaman/shellcheck/releases/download/stable/shellcheck-stable.linux.x86_64.tar.xz" | tar -xJv \
    && cp "shellcheck-stable/shellcheck" /usr/bin/ \
    && shellcheck --version

```


### Example success log

```shell
Results of shellcheck linter (version 0.7.1)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/bash_shellcheck/
-----------------------------------------------

[SUCCESS] .automation/test/shell/shell_good_1.sh
    

```

### Example error log

```shell
Results of shellcheck linter (version 0.7.1)
See documentation on https://nvuillam.github.io/mega-linter/descriptors/bash_shellcheck/
-----------------------------------------------

[ERROR] .automation/test/shell/shell_bad_1.sh
    
    In .automation/test/shell/shell_bad_1.sh line 10:
    if [ $ERROR_CODE -ne 0]; then
    ^-- SC1009: The mentioned syntax error was in this if expression.
       ^-- SC1073: Couldn't parse this test expression. Fix to allow more checks.
                           ^-- SC1020: You need a space before the ].
                           ^-- SC1072: Missing space before ]. Fix any mentioned problems and try again.
    
    For more information:
      https://www.shellcheck.net/wiki/SC1020 -- You need a space before the ].
      https://www.shellcheck.net/wiki/SC1072 -- Missing space before ]. Fix any m...
      https://www.shellcheck.net/wiki/SC1073 -- Couldn't parse this test expressi...

```
