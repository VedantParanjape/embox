# Generated by Xpand using M2Make template.

# Model of 'myFile' package.

ifndef __mybuild_myfile_model_mk
__mybuild_myfile_model_mk := 1

include mk/model/model_impl.mk

#
# Model object 'FileContentRoot'.
#
# The following features are defined:
#   - reference 'types'
#   - attribute 'imports'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyFileContentRoot
	# Extends 'ENamedObject' class.
	$(eobject MyFile_FileContentRoot,
		MyFileContentRoot,ENamedObject,)

	# Property 'types... : MyType'.
	$(eobject-reference MyFile_FileContentRoot_types,
		types,MyType,fileContentRoot,changeable many containment)

	# Property 'imports...'.
	$(eobject-attribute MyFile_FileContentRoot_imports,
		imports,changeable many)

	# PROTECTED REGION ID(FileContentRoot) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'Type'.
#
# The following features are defined:
#   - reference 'fileContentRoot'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyType # abstract
	# Extends 'ENamedObject' class.
	$(eobject MyFile_Type,
		MyType,ENamedObject,abstract)

	# Property 'fileContentRoot : MyFileContentRoot'.
	$(eobject-reference MyFile_Type_fileContentRoot,
		fileContentRoot,MyFileContentRoot,types,changeable container)

	# PROTECTED REGION ID(Type) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'AnnotationType'.
#
# No features or operations defined.
#
# The following features are inherited from 'Type':
#   - reference 'fileContentRoot'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyAnnotationType
	# Extends 'MyType' class.
	$(eobject MyFile_AnnotationType,
		MyAnnotationType,MyType,)

	# PROTECTED REGION ID(AnnotationType) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'Interface'.
#
# The following features are defined:
#   - reference 'features'
#
# The following features are inherited from 'Type':
#   - reference 'fileContentRoot'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyInterface
	# Extends 'MyType' class.
	$(eobject MyFile_Interface,
		MyInterface,MyType,)

	# Property 'features... : MyFeature'.
	$(eobject-reference MyFile_Interface_features,
		features,MyFeature,interface,changeable many containment)

	# PROTECTED REGION ID(Interface) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'Feature'.
#
# The following features are defined:
#   - reference 'interface'
#   - reference 'providedBy'
#   - reference 'requiredBy'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyFeature
	# Extends 'ENamedObject' class.
	$(eobject MyFile_Feature,
		MyFeature,ENamedObject,)

	# Property 'interface : MyInterface'.
	$(eobject-reference MyFile_Feature_interface,
		interface,MyInterface,features,changeable container)

	# Property 'providedBy... : MyModule'.
	# Property 'providedBy_links... : ELink'.
	$(eobject-reference MyFile_Feature_providedBy,
		providedBy,MyModule,provides,changeable many linkable)

	# Property 'requiredBy... : MyModule'.
	# Property 'requiredBy_links... : ELink'.
	$(eobject-reference MyFile_Feature_requiredBy,
		requiredBy,MyModule,requires,changeable many linkable)

	# PROTECTED REGION ID(Feature) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'Module'.
#
# The following features and operations are defined:
#   - attribute 'static'
#   - attribute 'abstract'
#   - reference 'depends'
#   - reference 'dependent'
#   - reference 'provides'
#   - reference 'requires'
#   - reference 'sources'
#   - reference 'objects'
#   - attribute 'flags'
#   - reference 'makeRules'
#   - reference 'options'
#   - reference 'subTypes'
#   - reference 'superType'
#   - reference 'allSubTypes'
#   - reference 'allSuperTypes'
#   - operation 'isSubTypeOf'
#   - operation 'isSuperTypeOf'
#
# The following features are inherited from 'Type':
#   - reference 'fileContentRoot'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyModule
	# Extends 'MyType' class.
	$(eobject MyFile_Module,
		MyModule,MyType,)

	# Property 'isStatic'.
	$(eobject-attribute MyFile_Module_isStatic,
		isStatic,changeable)

	# Property 'isAbstract'.
	$(eobject-attribute MyFile_Module_isAbstract,
		isAbstract,changeable)

	# Property 'depends... : MyModule'.
	# Property 'depends_links... : ELink'.
	$(eobject-reference MyFile_Module_depends,
		depends,MyModule,dependent,changeable many linkable)

	# Property 'dependent... : MyModule'.
	# Property 'dependent_links... : ELink'.
	$(eobject-reference MyFile_Module_dependent,
		dependent,MyModule,depends,changeable many linkable)

	# Property 'provides... : MyFeature'.
	# Property 'provides_links... : ELink'.
	$(eobject-reference MyFile_Module_provides,
		provides,MyFeature,providedBy,changeable many linkable)

	# Property 'requires... : MyFeature'.
	# Property 'requires_links... : ELink'.
	$(eobject-reference MyFile_Module_requires,
		requires,MyFeature,requiredBy,changeable many linkable)

	# Property 'sources... : MyFile'.
	$(eobject-reference MyFile_Module_sources,
		sources,MyFile,,changeable many containment)

	# Property 'objects... : MyFile'.
	$(eobject-reference MyFile_Module_objects,
		objects,MyFile,,changeable many containment)

	# Property 'flags'.
	$(eobject-attribute MyFile_Module_flags,
		flags,changeable)

	# Property 'makeRules... : MyMakeRule'.
	$(eobject-reference MyFile_Module_makeRules,
		makeRules,MyMakeRule,,changeable many containment)

	# Property 'options... : MyOption'.
	$(eobject-reference MyFile_Module_options,
		options,MyOption,,changeable many containment)

	# Property 'subTypes... : MyModule'.
	# Property 'subTypes_links... : ELink'.
	$(eobject-reference MyFile_Module_subTypes,
		subTypes,MyModule,superType,changeable many linkable)

	# Property 'superType : MyModule'.
	# Property 'superType_link : ELink'.
	$(eobject-reference MyFile_Module_superType,
		superType,MyModule,subTypes,changeable linkable)

	# Reference 'allSubTypes' [0..*]: bidirectional, derived, read-only.
	$(property allSubTypes... : MyModule)
	# PROTECTED REGION ID(Module_allSubTypes) ENABLED START
#	# TODO Uncomment and implement me.
	$(getter allSubTypes,
		$(error $0: NIY))
	# PROTECTED REGION END

	# Reference 'allSuperTypes' [0..*]: bidirectional, derived, read-only.
	$(property allSuperTypes... : MyModule)
	# PROTECTED REGION ID(Module_allSuperTypes) ENABLED START
	$(getter allSuperTypes,
		$(get superType) $(foreach s,$(get superType),$(get s->allSuperTypes)))
	# PROTECTED REGION END

	# Method 'isSubTypeOf'.
	#   1. another : MyModule
	# PROTECTED REGION ID(Module_isSubTypeOf) ENABLED START
#	# TODO Uncomment and implement me.
#	$(method isSubTypeOf,
#		$(error $0($1): NIY))
	# PROTECTED REGION END

	# Method 'isSuperTypeOf'.
	#   1. another : MyModule
	# PROTECTED REGION ID(Module_isSuperTypeOf) ENABLED START
#	# TODO Uncomment and implement me.
	$(method isSuperTypeOf,
		$(error $0($1): NIY))
	# PROTECTED REGION END

	# PROTECTED REGION ID(Module) ENABLED START
	# PROTECTED REGION END
endef

#
# Model object 'File'.
#
# The following features are defined:
#   - attribute 'fileName'
#   - attribute 'fileFullName'
#
define class-MyFile
	$(eobject MyFile_File,
		MyFile,,)

	# Property 'fileName'.
	$(eobject-attribute MyFile_File_fileName,
		fileName,changeable)

	# Attribute 'fileFullName': derived, read-only.
	$(property fileFullName)
	# PROTECTED REGION ID(File_fileFullName) ENABLED START
	$(getter fileFullName,
		$(dir $(get $(get eResource).fileName))$(get fileName))
	# PROTECTED REGION END

	# PROTECTED REGION ID(File) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'MakeRule'.
#
# The following features are defined:
#   - reference 'target'
#   - reference 'prerequisites'
#
define class-MyMakeRule
	$(eobject MyFile_MakeRule,
		MyMakeRule,,)

	# Property 'target : MyFile'.
	$(eobject-reference MyFile_MakeRule_target,
		target,MyFile,,changeable containment)

	# Property 'prerequisites... : MyFile'.
	$(eobject-reference MyFile_MakeRule_prerequisites,
		prerequisites,MyFile,,changeable many containment)

	# PROTECTED REGION ID(MakeRule) ENABLED START

	$(if $(value 1),
		$(set target,$1))

	$(if $(value 2),
		$(set prerequisites,$2))

	# PROTECTED REGION END
endef

#
# Model object 'Option'.
#
# The following features are defined:
#   - reference 'defaultValue'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyOption # abstract
	# Extends 'ENamedObject' class.
	$(eobject MyFile_Option,
		MyOption,ENamedObject,abstract)

	# Property 'defaultValue : MyOptionValue'.
	$(eobject-reference MyFile_Option_defaultValue,
		defaultValue,MyOptionValue,,changeable containment)

	# PROTECTED REGION ID(Option) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'StringOption'.
#
# No features or operations defined.
#
# The following features are inherited from 'Option':
#   - reference 'defaultValue'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyStringOption
	# Extends 'MyOption' class.
	$(eobject MyFile_StringOption,
		MyStringOption,MyOption,)

	# PROTECTED REGION ID(StringOption) ENABLED START
	# PROTECTED REGION END
endef

#
# Model object 'NumberOption'.
#
# No features or operations defined.
#
# The following features are inherited from 'Option':
#   - reference 'defaultValue'
#
# The following features and operations are inherited from 'ENamedObject':
#   - attribute 'name'
#   - attribute 'qualifiedName'
#   - attribute 'origin'
#   - operation 'eInverseResolvedLinks'
#
define class-MyNumberOption
	# Extends 'MyOption' class.
	$(eobject MyFile_NumberOption,
		MyNumberOption,MyOption,)

	# PROTECTED REGION ID(NumberOption) ENABLED START
	# PROTECTED REGION END
endef

#
# Model object 'OptionValue'.
#
# The following features and operations are defined:
#   - attribute 'value'
#   - operation 'toString'
#
define class-MyOptionValue # abstract
	$(eobject MyFile_OptionValue,
		MyOptionValue,,abstract)

	# Property 'value'.
	$(eobject-attribute MyFile_OptionValue_value,
		value,changeable)

	# Method 'toString'.
	# PROTECTED REGION ID(OptionValue_toString) ENABLED START
#	# TODO Uncomment and implement me.
	$(method toString,
		$(error $0(): NIY))
	# PROTECTED REGION END

	# PROTECTED REGION ID(OptionValue) ENABLED START
#	# TODO Add custom implementation here and remove this comment.
	# PROTECTED REGION END
endef

#
# Model object 'StringOptionValue'.
#
# The following operations are defined:
#   - operation 'toString'
#
# The following features and operations are inherited from 'OptionValue':
#   - attribute 'value'
#   - operation 'toString'
#
define class-MyStringOptionValue
	# Extends 'MyOptionValue' class.
	$(eobject MyFile_StringOptionValue,
		MyStringOptionValue,MyOptionValue,)

	# Method 'toString'.
	# PROTECTED REGION ID(StringOptionValue_toString) ENABLED START
#	# TODO Uncomment and implement me.
	$(method toString,
		$(error $0(): NIY))
	# PROTECTED REGION END

	# PROTECTED REGION ID(StringOptionValue) ENABLED START
	$(if $(value 1),
		$(set value,$1))
	# PROTECTED REGION END
endef

#
# Model object 'NumberOptionValue'.
#
# The following operations are defined:
#   - operation 'toString'
#
# The following features and operations are inherited from 'OptionValue':
#   - attribute 'value'
#   - operation 'toString'
#
define class-MyNumberOptionValue
	# Extends 'MyOptionValue' class.
	$(eobject MyFile_NumberOptionValue,
		MyNumberOptionValue,MyOptionValue,)

	# Method 'toString'.
	# PROTECTED REGION ID(NumberOptionValue_toString) ENABLED START
#	# TODO Uncomment and implement me.
	$(method toString,
		$(error $0(): NIY))
	# PROTECTED REGION END

	# PROTECTED REGION ID(NumberOptionValue) ENABLED START
	$(if $(value 1),
		$(set value,$1))
	# PROTECTED REGION END
endef

$(def_all)

endif # __mybuild_myfile_model_mk

