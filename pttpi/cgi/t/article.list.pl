#!/usr/bin/perl
# $Id$
use Frontier::Client;
use Frontier::RPC2;
use MIME::Base64;
use Data::Dumper;
do 'host.pl';

$bid = $ARGV[0] || 0;

$server = Frontier::Client->new(url => $server_url);
$result = $server->call('article.list',
			$bid, # bid
			0);   # from # article

print Dumper($result);
