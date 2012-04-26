use IO::Socket;
use Getopt::Long;

my $length = 1024;
my $limit  = 100;

$option = GetOptions ("length=i" => \$length
                     ,"limit=i"  => \$limit
                     );

my $sock = new IO::Socket::INET ( LocalHost => '127.0.0.1'
                                , LocalPort => '7070'
                                , Proto => 'tcp'
                                , Listen => 1
                                , Reuse => 1
                                );
die "Could not create socket: $!\n" unless $sock;

$count = 0;

while($count < $limit)
{
    $sock->recv($received_data, ($length));
    print "[$count]length: " . length($received_data) . "\n";
    $count++;
}
close $sock;
