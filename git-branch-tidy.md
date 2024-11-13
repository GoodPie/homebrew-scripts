# git-branch-tidy.sh

## Description
This script cleans up local Git branches that have been merged into the main branch and whose remote branches no longer exist. It fetches the latest state of the repository, lists the branches that will be deleted, and prompts the user for confirmation before performing the deletion.

## Usage
1. Ensure you have the script `git-branch-tidy.sh` available and executable.
2. Run the script from the root of your Git repository:
    ```bash
    ./git-branch-tidy.sh
    ```
3. The script will list the branches that are eligible for deletion and prompt you for confirmation.
4. Type `y` to proceed with the deletion or `n` to cancel.

# git-branch-tidy.rb

## Description
This Homebrew formula installs the `git-branch-tidy` script, which is used to clean up local Git branches that have been merged and whose remote branches no longer exist.

## Installation
1. Add the custom Homebrew tap:
    ```bash
    brew tap goodpie/homebrew-scripts
    ```
2. Install the `git-branch-tidy` script using Homebrew:
    ```bash
    brew install git-branch-tidy
    ```
3. Once installed, you can run the script using the command:
    ```bash
    git-branch-tidy
    ```