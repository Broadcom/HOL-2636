ses_auth=$(curl -k -X POST https://vc-mgmt-a.site-a.vcf.lab/api/session -u 'administrator@vsphere.local':'VMware123!VMware123!')
curl -k -X GET https://vc-mgmt-a.site-a.vcf.lab/api/vcenter/consumption-domains/zones -H "vmware-api-session-id: $(echo ${ses_auth} | tr -d '"')" -H 'Content-Type: application/json' | jq
