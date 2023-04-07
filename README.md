## Modelately Password Generator

## Project Overview
This project is a modelately password generator. It generates a random password. You can also specify the length, num and charactor included in the password.

## Installation Instructions
This project works with Ruby 2.7 or higher. Required libraries are listed in the Gemfile. You can install them with the following command.

```bash
bundle install
````

## Usage
This project can be run from the command line. The following options are available.

```bash
modelately_password_generator [-h] [-l LENGTH] [-n NUM] [-a ADDITIONAL_CHARS] 
```

- `-h` : display help message.
- `-l LENGTH` : Specifies the length of the password to generate. Default is 16.
- `-n NUM` : number of passwords to generate. Default is 10.
- `-a ADDITIONAL_CHARS` : Specifies non-alphanumeric characters to be included in the password. Default is `-_`.

## Example usage
The following is an example of actual program execution.

```bash
$ modelately_password_generator
leX_cmf-_bBWELYh
ov2OGligU-249_fX
N5PVT9-0V_9dSa_T
s44Xo1rgh-0ik_yL
ygSIrYeG_K-IOySo
J-up_u8O5Nm2yXx0
sl3-MW_yHhQidiX6
S0Uh77F-N_YgSDPq
e4xXguzM-Q_W8H3S
h_wglB2-PAni-Jc9

$ modelately_password_generator -l 12 -n 5 -a '%$#@'
1#@J2nUi$Y%X
a_2$v%EB#@Hl
RV0@#cC%U1$m
lIy$2r#@9%uP
ZJc#75@8$m%U

```

## Update History
- 2023/04/07 : First Edition Released

## License and author information
This project is released under the MIT License. See the [LICENSE](LICENSE.txt) file for details.

The author of this project is kazto.
