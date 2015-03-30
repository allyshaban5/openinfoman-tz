import module namespace functx = "http://www.functx.com";
declare namespace csd = "urn:ihe:iti:csd:2013";
declare variable $careServicesRequest as item() external;

let $t_top_orgid  :=  $careServicesRequest/query[@name = 'orgid']/text()
let $output := 
<json type='object'>
<exist>{if($t_top_orgid) then "Exist" else "Not Exist"}</exist>
</json>
return json:serialize($output,map{'format':'direct'})
