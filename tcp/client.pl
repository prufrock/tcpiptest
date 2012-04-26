use IO::Socket;
my $sock = new IO::Socket::INET ( PeerAddr => '127.0.0.1',
                                  PeerPort => '7070',
                                  Proto    => 'tcp',
                                );
die "Could not create socket: $!\n" unless $sock;
$x = "a";
$size = 65535;
$out = "";
while($size > 0){
    $out .= $x;
    $size--;
}
print $sock $out;
close($sock);
