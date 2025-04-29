#!/bin/bash
set -e
suricata-update -o /etc/suricata/rules/ \
                --no-test \
                --ignore "*deleted.rules" \
                --reload-command 'suricatasc -c reload-rules'
exec suricata -c /etc/suricata/suricata.yaml -q 0 -l /var/log/suricata
