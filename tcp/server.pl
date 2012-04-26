use IO::Socket;
my $sock = new IO::Socket::INET ( LocalHost => '127.0.0.1'
                                , LocalPort => '7070'
                                , Proto => 'tcp'
                                , Listen => 1
                                , Reuse => 1
                                );
die "Could not create socket: $!\n" unless $sock;

while(1)
{
    sleep 5;
    $sock->recv($received_data, (1024 * 100));
    print "length: " . length($received_data) . "\n";
}
close $sock;
