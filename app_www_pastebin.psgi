use strict;
use warnings;

use App::WWW::PasteBin;

my $app = App::WWW::PasteBin->apply_default_middlewares(App::WWW::PasteBin->psgi_app);
$app;

