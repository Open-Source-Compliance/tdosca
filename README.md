# TDOSCA Project Scope Statement

* [The project context](#PrjContext)
* [Further information concerning the motivation to inaugurate the project](./doc/tdcosca-motivation.pdf)
* [The project target](#PrjTarget)
* [The general structure of a test case](#TCStructure)


TDOSCA stands for *Test Driven Open Source Compliance Automation*:

## The project context <a id="PrjContext"></a>
We have already a lot of Open Source Compliance tools. The community has spent a lot of effort to help us using Open Source software compliantly. Such tools support us, to create the *Open Source Compliance Artifacts* which we have to combine with our software packages for distributing them in accordance to the requirements of the Open Source Licenses. The [Open Source Tooling Workgroup](http://oss-compliance-tooling.org/) of the [Open Chain Project](https://www.openchainproject.org/) offers a [landscape of such tools](http://oss-compliance-tooling.org/Tooling-Landscape/OSS-Based-License-Compliance-Tools/).

We have two options to develop an adequate and sufficient *Open Source Compliance Tool Chain*: we can develop it *bottom up* or *top down*. In this context 'bottom up' means first to develop solutions for known sub-problems and to postpone their combination in the hope, that we nevertheless will be able to create the required compliance artifacts. 'Top down', on the other hand, means first to define the structure and format of the necessary compliance artifacts and then to develop the tools in accordance to the specifications.  


Thus, the 'top down' approach implies a working mode that is at least similar to the well known *test driven development method*:

## The project target: <a id="PrjTarget"></a>

In accordance with the idea of a *test driven development mode* **TDOSCA** wants to deliver different test cases for such a working mode. They will be offered as autonomous repositories by which Open Source Compliance tools can

* either prove that they already successfully generate such required artifacts
* or show which parts of an imaginary compliance chain they successfully process.

For doing this job successfully, these tools must gather information about the embedded sub components on which the main component depends or they must have access to the information gathered by other tools. For finding such information the gathering tools do not only evaluate the programming language specific 'include' statements of the software itself, but the statements of respective package manager.

Creating an appropriate set of test cases means to deal with a multi dimensional area established by the dimensions

* *complexity of compliance challenges*
* *programming language*
* *type of the dependency / package manager*

Initially, the *TDOSCA* project shall aim to deliver the following objectives:

| Complexity | bash | C/C++ | C/C++ | C/C++ | JAVA | JAVA | PHP | PYTHON | NODE.JS |
|-|-|-|-|-|-|-|-|-|-|
| | GNU autotools | Gradle | Conan | GNU autotools | Gradle | Maven | Composer | PIP | NPM |
| simple hello world | [tc-01](#TC01)  |  |  |  | [tc-03a](#TC03A) [tc-03b](#TC03b) | [tc-05](#TC05)  |  |  |
| plain hello world |  |  |  | [tc-02](#TC02) | [tc-04](#TC04) |  |  |  |
| complex hello world |  |  |  |  |  |  |  |  |

Here a further characterization of some test cases:

* **Implemented Test Cases**:

  - <a id="TC01">[tdosca-tc01-simplhw](https://github.com/Open-Source-Compliance/tdosca-tc01-simplhw) :- two bash scripts, declared license: MIT, one file licensed under the BSD-2-Clause

  - <a id="TC02">[tdosca-tc02-plainhw](https://github.com/Open-Source-Compliance/tdosca-tc01-plainhw) :-a c program requiring a preinstalled c-library, which is differently licensed and as 3rd-party component integrated into the same repository = delivered together with the main program
  - <a id="TC03A">[tdosca-tc03a-simplhw](https://github.com/Open-Source-Compliance/tdosca-tc03a-simplhw) :- Java Program with 2 Classes: MIT, but one file licensed under the BSD-2-Clause
  - <a id="TC03b">[tdosca-tc03b-simplhw](https://github.com/Open-Source-Compliance/tdosca-tc03b-simplhw) :- Java Program with 2 Classes: MIT, but one file licensed under the BSD-2-Clause + gradle wrapper (Apache v2)
- <a id="TC04">[tdosca-tc04-plainhw](https://github.com/Open-Source-Compliance/tdosca-tc04-plainhw) :- Java Program with 3 divergently licensed files: main=MIT, greeter=Apache-v2, tipster=BSD-3CL and 2 foreign subcomponents Log4j and JodaTime which are integrated into the distribution

  - <a id="TC05">[tdosca-tc05-simplhw](https://github.com/Open-Source-Compliance/tdosca-tc05-simplhw) :- Java Program with 2 Classes: MIT, but one file licensed under the BSD-2-Clause


* **Planned Test Cases**:

  - [tdosca-tcXX-complhw](https://github.com/Open-Source-Compliance/) :- A ***complex*** *C++ Hello World Program* that requires preinstalled differently licensed libraries  hosted in external repositories

  - [tdosca-tc04-sophihw](https://github.com/Open-Source-Compliance/) : - A ***sophisticated*** *Hello World Program* based on c, c++, and bash components and a complex mixture of the options mentioned above.

Each test case will be offered as a[n|set of] autonomous reposito[ry|ries]. To cluster the *TDOSCA* repositories they all start with the prefix ``tdosca`` followed by the *test case number* and its label.

## The general structure of a test case: <a id="TCStructure"></a>

Each test case * shall have the same structure and deliver the same type of data / files:

* **compliance-traps.md**: *describes the traps / challenges implemented by and in the test case* [used to manually control whether a tested compliance tool really overcomes all difficulties]
* **input-sources**: *contains all sources to create the distributable (binary package)* [used by the tested tool to create the compliance artifacts]
* **README.md**: *describes the main idea of the test case*
* **reference-compliance-artifacts**: *the compliance compliance artifacts (and some of its preliminary products) which are necessary to distribute the program compliantly and which therefore a sufficient tool (chain) must/should generate*
  - **bom.csv**: *a list of all differently licensed open source components of a package*
  - **does.yaml**: *a list of open / closed tasks to establish the open source compliance*
  - **donts.yaml**: *a list prohibited actions to use the package compliantly*
  - **oscf.md**: *the open source compliance file* [fulfills the compliance requirements if combined with the distributed source- or binary package]
  * **prerequisites.csv**: *a list of preinstalled tools and libs, required by the software but not delivered as part of the software package*

## Licensing Statement

(c) 2020, Karsten Reincke, Deutsche Telekom AG

* The software delivered as content of the test case directory ``input-sources`` is licensed under the licenses the test case uses to challenge the compliance tools. Contributions take place under the same licenses.

* Unless otherwise specified, all other files are distributed under the terms of the [CC-BY-4.0 license](https://creativecommons.org/licenses/by/4.0/).
  - If you share or adapt (one of) the files add the attribution: "File originates from the TDOSCA project ($REP) initiated by Deutsche Telekom AG"
  - If you distribute a complete test case add the attribution: "The test case originates from the TDOSCA project ($REP) initiated by Deutsche Telekom AG"
  - (In both case replace $REP by the name of the respective repository)
