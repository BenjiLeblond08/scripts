#/bin/sh
#
# *************************************************************************** #
# file          : debug_log.sh
# usage         : ./debug_log.sh <script_to_log>
# description   : This script allow to create a log file for debug 
#                   when executing another script
# author        : Benjamin Leblond <benjamin.leblond@renater.fr>
# date          : 2018-10-24
# *************************************************************************** #
#

if [ -z ${1} ] ; then
	echo "No parameter was given"
	exit 0
fi

logfile="${HOME}/$(basename "${1}").log"

echo "Debug of script ${1}" | tee "${logfile}"
echo "Start execution time: $(date)" | tee -a "${logfile}"
echo | tee -a "${logfile}"

bash -x "${1}" 2>&1 \
| sed -E "s/^\+ echo .*$//" \
| sed -E "s/^\+ /\$ /" \
| tee -a "${logfile}"

# bash -x "${1}" 2> >(sed 's/^/ERROR: /' >&1) \
# | sed -E "s/^ERROR: \+ echo .*$//" \
# | sed -E "s/^ERROR: \+/\$ /" \
# | tee -a "${logfile}"

echo | tee -a "${logfile}"
echo "End execution time: $(date)" | tee -a "${logfile}"
echo | tee -a "${logfile}"
