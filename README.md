# flashcards

Flashcards for spaced repetition

Uses https://github.com/shift-L/hashcards, which is a fork of 
https://github.com/eudoxia0/hashcards to fix links to resources.
Respect to the author for this excellent work!

To make this your own, fork this repository and remove the example
directory. Create your own cards within any folder structure you
want within the cards folder. Follow the README in
https://github.com/shift-L/hashcards for details on the format of
the cards or just copy those in the example directory.

## Server Setup

To install on your own server, follow the steps below. This repo uses
exe.dev as it provides the simplest setup.

Go to exe.dev and follow the instructions for setting up a machine or
simply type the following in your shell and follow the instructions:
```bash
ssh exe.dev
```

Then follow this tutorial for setting up a GitHub Action Runner:
https://exe.dev/docs/use-case-gh-action-runner

Every time you push to your forked repo, GitHub Actions Runner will
pick up the job and rerun the drill.yml file to restart the
container. Your cards will be updated and available at your host
address!

Happy memorising!

## Troubleshooting

Spin up the AI agent Shelley from exe.dev to investigate any issues.
It couldn't be easier.