select ch.care_recipient_id, cr.guardian_name, cr.name, cr.mobile_number, ch.vaccination_details_id, ch.date_time_Called,cre.extrnl_system_id,  cre.health_worker_id 
from care_recipient cr join call_history ch on cr.care_recipient_id = ch.care_recipient_id 
join   care_recipient_extn cre on cr.care_recipient_id = cre.care_recipient_id 
where ch.call_Status="HUNG_UP";