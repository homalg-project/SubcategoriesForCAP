#! @Chunk SliceCategoryOfCategoryOfRowsOfFieldOverTensorUnitPrecompiled

#! @Example

LoadPackage( "SubcategoriesForCAP" );
#! true
LoadPackage( "FreydCategoriesForCAP" );
#! true

QQ := HomalgFieldOfRationals( );;

# HomalgIdentityMatrix( size, ring ) * matrix -> matrix
CapJitAddLogicTemplate(
    rec(
        variable_names := [ "size", "ring", "matrix" ],
        src_template := "HomalgIdentityMatrix( size, ring ) * matrix",
        dst_template := "matrix",
        needed_packages := [ [ "MatricesForHomalg", ">= 2020.05.19" ] ],
    )
);

# we do not use SliceCategoryOverTensorUnit because that installs more operations
# which we are not interested in for this simple test
category_constructor := field ->
    SliceCategory(
        TensorUnit(
            CategoryOfRows( field : FinalizeCategory := true )
        )
    );;

given_arguments := [ QQ ];;
compiled_category_name := "SliceCategoryOfCategoryOfRowsOfFieldOverTensorUnitPrecompiled";;
package_name := "SubcategoriesForCAP";;

CapJitPrecompileCategoryAndCompareResult(
    category_constructor,
    given_arguments,
    package_name,
    compiled_category_name
    : operations := "primitive"
);

#! @EndExample