use Test;
use WebService::HazIP;

my $ipObj = WebService::HazIP.new;
my $ip = $ipObj.returnIP();
ok $ip, "Can return an IP";
like $ip, / ^^([\d ** 1..3] ** 4 % '.')$$ /, "Correct IP format";

done-testing();
