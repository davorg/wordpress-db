use utf8;
package WordPress::DB::Result::Postmeta;

=head1 NAME

WordPress::DB::Result::Postmeta

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<wp_postmeta>

=cut

__PACKAGE__->table("wp_postmeta");

=head1 ACCESSORS

=head2 meta_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 post_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 meta_key

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 meta_value

  data_type: 'longtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "meta_id",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "post_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "meta_key",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "meta_value",
  { data_type => "longtext", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</meta_id>

=back

=cut

__PACKAGE__->set_primary_key("meta_id");

1;
