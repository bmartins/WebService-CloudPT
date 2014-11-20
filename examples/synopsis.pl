use WebService::CloudPT;

my $cloudpt = WebService::CloudPT->new(
  {
    key    => '...',    # App Key
    secret => '...'     # App Secret
  }
);

my $url_callback = '...'; # http://0:3000 for instance.

# get access token
if ( !$access_token or !$access_secret ) {
  my $url = $cloudpt->login( $url_callback ) or die $cloudpt->error;
  warn "Please Access $url and copy and paste its oauth_verifier parameter then press Enter";
  my $verifier = <STDIN>;
  chomp $verifier;
  $cloudpt->auth( { 'verifier' => $verifier } ) or die $cloudt->error;
  warn "access_token: " . $cloudpt->access_token;
  warn "access_secret: " . $cloudpt->access_secret;
} ## end if ( !$access_token or...)
else {
  $cloudpt->access_token( $access_token );
  $cloudpt->access_secret( $access_secret );
}

my $info = $cloudpt->account_info or die $cloudpt->error;

# filelist(metadata)
# https://cloudpt.pt/documentation#metadata
my $data = $cloudpt->metadata( 'folder_a' );
