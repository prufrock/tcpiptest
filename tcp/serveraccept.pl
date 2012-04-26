#[1] http://perldoc.perl.org/functions/accept.html
#[2] http://www.rocketaware.com/perl/perlipc/TCP_Servers_with_IO_Socket.htm
use IO::Socket;
use Getopt::Long;

my $port = 7070;

$option = GetOptions ("port=i" => \$port
                     ,"limit=i"  => \$limit
                     );

my $sock = new IO::Socket::INET ( LocalHost => '127.0.0.1'
                                , LocalPort => $port
                                , Proto => 'tcp'
                                , Listen => SOMAXCONN, # huh, I didn't know these constants were used in Perl
                                , Reuse => 1
                                );
die "Could not create socket: $!\n" unless $sock;

close $sock;
