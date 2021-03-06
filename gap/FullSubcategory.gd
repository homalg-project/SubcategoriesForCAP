# SPDX-License-Identifier: GPL-2.0-or-later
# SubcategoriesForCAP: Subcategory and other related constructors for CAP categories
#
# Declarations
#

#! @Chapter Full subcategories

####################################
#
#! @Section GAP categories
#
####################################

#! @Description
#!  The &GAP; category of a full subcategory.
DeclareCategory( "IsCapFullSubcategory",
        IsCapSubcategory );

#! @Description
#!  The &GAP; category of a full subcategory generated by finite number of objects.
DeclareCategory( "IsCapFullSubcategoryGeneratedByFiniteNumberOfObjects",
        IsCapFullSubcategory );

#! @Description
#!  The &GAP; category of cells in a full subcategory.
DeclareCategory( "IsCapCategoryCellInAFullSubcategory",
        IsCapCategoryCellInASubcategory );

#! @Description
#!  The &GAP; category of objects in a full subcategory.
DeclareCategory( "IsCapCategoryObjectInAFullSubcategory",
        IsCapCategoryCellInAFullSubcategory and IsCapCategoryObjectInASubcategory );

#! @Description
#!  The &GAP; category of morphisms in a full subcategory.
DeclareCategory( "IsCapCategoryMorphismInAFullSubcategory",
        IsCapCategoryCellInAFullSubcategory and IsCapCategoryMorphismInASubcategory );

####################################
#
#! @Section Global variables
#
####################################

#!
DeclareGlobalVariable( "CAP_INTERNAL_METHOD_NAME_LIST_FOR_FULL_SUBCATEGORY" );

#!
DeclareGlobalVariable( "CAP_INTERNAL_METHOD_NAME_LIST_FOR_ADDITIVE_FULL_SUBCATEGORY" );

####################################
#
#! @Section Constructors
#
####################################

DeclareGlobalFunction( "ADD_FUNCTIONS_FOR_FULL_SUBCATEGORY" );

DeclareGlobalFunction( "ADD_FUNCTIONS_FOR_HOM_STRUCTURE_OF_FULL_SUBCATEGORY" );

DeclareOperation( "FullSubcategory",
                  [ IsCapCategory, IsString ] );

#! @Description
#!  The input is a list of objects <A>L</A> in the same category. The output is the full subcategory generated by <A>L</A>.
#! @Arguments C, L
#! @Returns CapFullSubcategory
DeclareGlobalFunction( "FullSubcategoryGeneratedByListOfObjects" );

DeclareOperation( "\[\]",
          [ IsCapFullSubcategoryGeneratedByFiniteNumberOfObjects, IsInt ] );
