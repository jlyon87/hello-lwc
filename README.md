# hello-lwc

> A simple Salesforce App to surface a Hello World Lightning Web Component.

## Installation

Clone this repository and authenticate into your Hub Org.

Windows: Run the script `./scripts/CreatOrg.bat`

Mac: Run the script `./scripts/CreateOrg.sh`

## Open the new Scratch org named `hello-lwc`

`sfdx force:org:open -u hello-lwc`

## Steps

> Steps are available by tags.

Checkout the Training App with the default Home Tab.

```
git checkout step-0
sfdx force:source:push
```
Checkout the Created `hello-lwc` Web Component.

```
git checkout step-1
sfdx force:source:push
```
Checkout the Surfaced Component in Training Home Tab.

```
git checkout step-2
sfdx force:source:push
```
Checkout the configurable Greeting on `hello-lwc`

```
git checkout step-3
sfdx force:source:push
```

## Project Template Examples

Refer to the following files to template any sfdx project from this hello-lwc example:

 * `./config/project-scratch-def.json`
 * `./data/`
 * `./scripts/`
 * `.forceignore`
 * `.gitignore`

 ## Sample /.vscode Settings

 Refer to the `/_vscode/` folder for sample settings files. Copy these files to your local `/.vscode/` folder.

 The `./_vscode/tasks.json` provides a handy Save All and push to default scratch org build command and a sample custom task to print your sfdx version and core plugins.