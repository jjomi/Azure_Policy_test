$definition = New-AzPolicyDefinition `
    -Name 'ApplicationGateway_MetricLogAlert_Enabled' `
    -Description 'ApplicationGateway_MetricLogAlert_Enabled' `
    -Policy '/home/cho/ISMS-P_Policy/Policy/ApplicationGateway_MetricLogAlert_Enabled.json'

$definition = New-AzPolicyDefinition `
    -Name 'FirewallPolicy_Deny_Any_address' `
    -Description 'FirewallPolicy_Deny_Any_address' `
    -Policy '/home/cho/ISMS-P_Policy/Policy/FirewallPolicy_Deny_Any_address.json'


$groupsJson = ConvertTo-Json @{ name = "2.6.2 정보시스템 접근" }, @{ name = "2.6.6 원격접근 통제" }, @{ name = "2.6.7 인터넷 접속 통제" },  @{ name = "2.7.1 암호정책 적용" }, @{ name = "2.8.3 시험과 운영 환경 분리" }, @{ name = "2.9.2 성능 및 장애관리" }, @{ name = "2.9.4 로그 및 접속기록 관리" }, @{ name = "2.10.1 보안시스템 운영" }, @{ name = "2.10.2 클라우드 보안" }, @{ name = "2.10.3 공개서버 보안" }, @{ name = "2.11.3 이상행위 분석 및 모니터링" }
New-AzPolicySetDefinition -Name 'ISMS-P for Security' -GroupDefinition $groupsJson -PolicyDefinition '/home/cho/ISMS-P_Policy/ISMS-P for Security Initiative.json'