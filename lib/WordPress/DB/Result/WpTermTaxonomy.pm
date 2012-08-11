use utf8;
package WordPress::DB::Result::WpTermTaxonomy;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

WordPress::DB::Result::WpTermTaxonomy

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

=head1 TABLE: C<wp_term_taxonomy>

=cut

__PACKAGE__->table("wp_term_taxonomy");

=head1 ACCESSORS

=head2 term_taxonomy_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 term_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 taxonomy

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 description

  data_type: 'longtext'
  is_nullable: 0

=head2 parent

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 count

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "term_taxonomy_id",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "term_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "taxonomy",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "description",
  { data_type => "longtext", is_nullable => 0 },
  "parent",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "count",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</term_taxonomy_id>

=back

=cut

__PACKAGE__->set_primary_key("term_taxonomy_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<term_id_taxonomy>

=over 4

=item * L</term_id>

=item * L</taxonomy>

=back

=cut

__PACKAGE__->add_unique_constraint("term_id_taxonomy", ["term_id", "taxonomy"]);


# Created by DBIx::Class::Schema::Loader v0.07015 @ 2012-08-11 14:43:43
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0xOSArfeYhofNfyky05J1w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
