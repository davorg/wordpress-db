use utf8;
package WordPress::DB::Result::WpTermRelationship;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

WordPress::DB::Result::WpTermRelationship

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

=head1 TABLE: C<wp_term_relationships>

=cut

__PACKAGE__->table("wp_term_relationships");

=head1 ACCESSORS

=head2 object_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 term_taxonomy_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 term_order

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "object_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "term_taxonomy_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "term_order",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</object_id>

=item * L</term_taxonomy_id>

=back

=cut

__PACKAGE__->set_primary_key("object_id", "term_taxonomy_id");


# Created by DBIx::Class::Schema::Loader v0.07015 @ 2012-08-11 14:43:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5pbwgrg+o4YjF9fvR6hpPw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
