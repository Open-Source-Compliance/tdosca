# TDOSCA Project Scope Statement

* [The project context](#PrjContext)
* [The project target](#PrjTarget)
* [The general structure of a test case](#TCStructure)

TDOSCA stands for *Test Driven Open Source Compliance Automation*:

## The project context <a id="PrjContext"></a>
We have already a lot of Open Source Compliance tools. The community has spent a lot of effort to help us using Open Source software compliantly. Such tools support us, to create the *Open Source Compliance Artifacts* which we have to combine with our software packages for distributing them in accordance to the requirements of the Open Source Licenses. The [Open Source Tooling Workgroup](http://oss-compliance-tooling.org/) of the [Open Chain Project](https://www.openchainproject.org/) offers a [landscape of such tools](http://oss-compliance-tooling.org/Tooling-Landscape/OSS-Based-License-Compliance-Tools/).

We have two options to develop an adequate and sufficient *Open Source Compliance Tool Chain*: we can develop it *bottom up* or *top down*. In this context 'bottom up' means first to develop solutions for known sub-problems and to postpone their combination in the hope, that we nevertheless will be able to create the required compliance artifacts. 'Top down', on the other hand, means first to define the structure and format of the necessary compliance artifacts and then to develop the tools in accordance to the specifications.  

Thus, the 'top down' approach implies a working mode that is at least similar to the well known *test driven development method*:

## The project target: <a id="PrjTarget"></a>

IN accordance with the idea of a *test driven development mode* **TDOSCA** wants to deliver test cases for such a working mode. They will be offered as repositories by which known and new Open Source Compliance tools can
* either prove that they already successfully generate such required artifacts
* or show which parts of an imaginary compliance chain they successfully process.

Here a short summary of the test cases

| No. | Repository | Label | Language | Approach | Challenge |
|-|-|-|-|-|-|
|01|tdosca-tc01-simplhw](https://github.com/Open-Source-Compliance/tdosca-tc01-simplhw)| ***Simple*** Hello World Program |bash scripts| one main license (MIT), one file under another (BSD-2-Clause)| see --> |
|02|[tdosca-tc02-plainhw](https://github.com/Open-Source-Compliance/)| ***Plain*** Hello World Program |c| Program requiring a preinstalled library (differently licensed), which as 3rd-Party component is stored in the same repository | see --> |
|03|[tdosca-tc03-complhw](https://github.com/Open-Source-Compliance/)| ***Complex*** Hello World Program |c++| Program requiring preinstalled libraries (differently licensed), which are hosted in external repositories | see --> |
|04|[tdosca-tc04-sophihw](https://github.com/Open-Source-Compliance/)| ***Sophisticated*** Hello World Program |c, c++, and bash scripts | A very complex mixture of the options mentioned above.| see --> |

Each test case will be offered as a (set of) autonomous reposito[ry|ries]. To cluster the *TDOSCA* repositories they all start with the prefix ``tdosca`` followed by the *test case number* and its label.

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

## Licensing Statement

(c) 2020, Karsten Reincke, Deutsche Telekom AG

* The software delivered as content of the test case directory ``input-sources`` are licensed under that licenses the test case uses to challenge the compliance tools. Contributions take place under the same licenses.

* Unless otherwise specified, all other files are distributed under the terms of the [CC-BY-4.0 license](https://creativecommons.org/licenses/by/4.0/).
  - If you share or adapt (one of) the files add the attribution: "File originates from the TDOSCA project ($REP) initiated by Deutsche Telekom AG"
  - If you distribute a complete test case add the attribution: "The test case originates from the TDOSCA project ($REP) initiated by Deutsche Telekom AG"
  - (In both case replace $REP by the name of the respective repository)
