# SPDX-License-Identifier: GPL-2.0-or-later
# SubcategoriesForCAP: Subcategory and other related constructors for CAP categories
#
# Declarations
#

#! @Chapter Subcategories

####################################
#
#! @Section GAP categories
#
####################################

#! @Description
#!  The &GAP; category of a subcategory.
DeclareCategory( "IsCapSubcategory",
        IsCapCategory );

#! @Description
#!  The &GAP; category of a subcategory generated by finite number of morphisms.
DeclareCategory( "IsCapSubcategoryGeneratedByFiniteNumberOfMorphisms",
        IsCapSubcategory );


#! @Description
#!  The &GAP; category of cells in a subcategory.
DeclareCategory( "IsCellInASubcategory",
        IsCapCategoryCell );

#! @Description
#!  The &GAP; category of objects in a subcategory.
DeclareCategory( "IsObjectInASubcategory",
        IsCellInASubcategory and IsCapCategoryObject );

#! @Description
#!  The &GAP; category of morphisms in a subcategory.
DeclareCategory( "IsMorphismInASubcategory",
        IsCellInASubcategory and IsCapCategoryMorphism );

####################################
#
#! @Section Global variables
#
####################################

#!
DeclareGlobalVariable( "CAP_INTERNAL_METHOD_NAME_LIST_FOR_SUBCATEGORY" );

####################################
#
#! @Section Attributes
#
####################################

#! @Description
#!  The cell in the ambient category underlying <A>cell</A>.
#! @Arguments cell
#! @Returns a &CAP; cell
DeclareAttribute( "UnderlyingCell",
        IsCellInASubcategory );

#! @Description
#!  The set of known objects of the subcategory <A>A</A>.
#! @Arguments A
#! @Returns a list
DeclareAttribute( "SetOfKnownObjects",
        IsCapSubcategory, "mutable" );

#! @Description
#!  The ambient category of the subcategory <A>A</A>.
#! @Arguments A
#! @Returns a list
DeclareAttribute( "AmbientCategory",
        IsCapSubcategory );

####################################
#
#! @Section Constructors
#
####################################

#! @Arguments C, name
DeclareOperation( "Subcategory",
                  [ IsCapCategory, IsString ] );

#! @Arguments D, c
DeclareOperation( "AsSubcategoryCell",
                  [ IsCapSubcategory, IsCapCategoryCell ] );

#! @Arguments source, mor, range
DeclareOperation( "AsSubcategoryCell",
                  [ IsObjectInASubcategory, IsCapCategoryMorphism, IsObjectInASubcategory ] );

#! @Arguments c, D
DeclareOperation( "\/",
                [ IsCapCategoryCell, IsCapSubcategory ] );

#! @Description
#!  The input is a list of morphisms <A>L</A> in the same category. The output is the subcategory generated by <A>L</A>.
#! @Arguments C, L
#! @Returns CapSubcategory
DeclareGlobalFunction( "SubcategoryGeneratedByListOfMorphisms" );
