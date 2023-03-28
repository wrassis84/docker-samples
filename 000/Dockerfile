# "FROM" the source from image building:
FROM debian
# "LABEL" label for identify itens:
LABEL app="Giropops"
# "ENV" allow us using environment variables:
ENV instructor="badtuxx"
# "RUN" executes instructions/commands when building image:
RUN apt-get update && apt-get install -y stress && apt-get clean
# "CMD" executes commands when container up:
CMD stress --cpu 1 --vm-bytes 64M --vm 1
