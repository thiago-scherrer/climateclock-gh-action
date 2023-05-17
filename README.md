# climateclock-gh-action

This GitHub Action allows you to update a Markdown file with the current climate clock from [climateclock.world](https://www.climateclock.world/).

## Motivation
The [Climate Clock](https://www.climateclock.world/) is a powerful symbol that displays the time we have left to take meaningful action against climate change. By integrating the [Climate Clock](https://www.climateclock.world/) into your project's documentation, README github profile or website, you can help raise awareness and encourage others to take action.

## Inputs

- `branch` (optional): The branch to pull and push. Default: `main`.
- `js_delay` (optional): The JavaScript delay in seconds. Default: `3000`.

## Usage

To use this action in your workflow, you can follow the example below:

```yaml
name: Update Climate Clock

on:
  schedule:
    - cron: "*/60 * * * *"

jobs:
  update-clock:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Update Climate Clock
        uses: thiago-scherrer/climateclock-g-action@main
        with:
            branch: main
            js_delay: 3000
```

In this example, the workflow is triggered every 60 minutes.

Create a markdown file, like README.md and then put this code:

```markdown
# TIME LEFT TO LIMIT GLOBAL WARMING TO 1.5C
![clock](clock.png)
```

The steps in the job include checking out the repository's code using `actions/checkout@v3`, and then using the `thiago-scherrer/climateclock-g-action` action by referencing the action with the specified version (`@main`). The `branch` and `js_delay` inputs can be changed

The action performs the following steps:

1. Pulls the latest changes from the specified branch using `git pull`.
2. Runs a Docker container, mounting the current directory (`$(pwd)`) as `/app` and setting the `JS_DELAY` environment variable based on the `js_delay` input value.
3. Configures Git user information.
4. Adds the updated `clock.png` file.
5. Commits the changes with a commit message of "chore: clock update".
6. Pushes the changes to the specified branch.

Feel free to customize the workflow and inputs according to your specific needs.