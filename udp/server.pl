use IO::Socket;
my $sock = new IO::Socket::INET ( LocalHost => '127.0.0.1'
                                , LocalPort => '7070'
                                , Proto => 'udp'
                                #, Listen => 1 "operation not supported" why?
                                , Reuse => 1
                                );
die "Could not create socket: $!\n" unless $sock;

while(1)
{
    $sock->recv($received_data, (1024 * 100));
    print "length: " . length($received_data) . "\n";
}
close $sock;
