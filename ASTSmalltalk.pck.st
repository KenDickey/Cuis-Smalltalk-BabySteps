'From Cuis 6.0 [latest update: #5559] on 29 November 2022 at 3:58:22 pm'!
'Description Zag Smalltalk

https://github.com/dvmason/Zag-Smalltalk'!
!provides: 'ASTSmalltalk' 1 10!
SystemOrganization addCategory: 'ASTSmalltalk-AST'!
SystemOrganization addCategory: 'ASTSmalltalk-Compiler'!
SystemOrganization addCategory: 'ASTSmalltalk-Threaded'!
SystemOrganization addCategory: 'ASTSmalltalk-Tokens'!
SystemOrganization addCategory: 'ASTSmalltalk-IR'!
SystemOrganization addCategory: 'ASTSmalltalk-Image'!


!classDefinition: #ASClassNode category: 'ASTSmalltalk-AST'!
Object subclass: #ASClassNode
	instanceVariableNames: 'name classVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASClassNode class' category: 'ASTSmalltalk-AST'!
ASClassNode class
	instanceVariableNames: ''!

!classDefinition: #ASCodeBlock category: 'ASTSmalltalk-AST'!
Object subclass: #ASCodeBlock
	instanceVariableNames: 'nestedScopeOf body locals scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASCodeBlock class' category: 'ASTSmalltalk-AST'!
ASCodeBlock class
	instanceVariableNames: ''!

!classDefinition: #ASInline category: 'ASTSmalltalk-AST'!
ASCodeBlock subclass: #ASInline
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASInline class' category: 'ASTSmalltalk-AST'!
ASInline class
	instanceVariableNames: ''!

!classDefinition: #ASMethodOrBlock category: 'ASTSmalltalk-AST'!
ASCodeBlock subclass: #ASMethodOrBlock
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASMethodOrBlock class' category: 'ASTSmalltalk-AST'!
ASMethodOrBlock class
	instanceVariableNames: ''!

!classDefinition: #ASBlock category: 'ASTSmalltalk-AST'!
ASMethodOrBlock subclass: #ASBlock
	instanceVariableNames: 'method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASBlock class' category: 'ASTSmalltalk-AST'!
ASBlock class
	instanceVariableNames: ''!

!classDefinition: #ASMethodNode category: 'ASTSmalltalk-AST'!
ASMethodOrBlock subclass: #ASMethodNode
	instanceVariableNames: 'selector class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASMethodNode class' category: 'ASTSmalltalk-AST'!
ASMethodNode class
	instanceVariableNames: ''!

!classDefinition: #ASStatement category: 'ASTSmalltalk-AST'!
Object subclass: #ASStatement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASStatement class' category: 'ASTSmalltalk-AST'!
ASStatement class
	instanceVariableNames: ''!

!classDefinition: #ASExpression category: 'ASTSmalltalk-AST'!
ASStatement subclass: #ASExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASExpression class' category: 'ASTSmalltalk-AST'!
ASExpression class
	instanceVariableNames: ''!

!classDefinition: #ASArray category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASArray
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASArray class' category: 'ASTSmalltalk-AST'!
ASArray class
	instanceVariableNames: ''!

!classDefinition: #ASAssign category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASAssign
	instanceVariableNames: 'expression variable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASAssign class' category: 'ASTSmalltalk-AST'!
ASAssign class
	instanceVariableNames: ''!

!classDefinition: #ASCascade category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASCascade
	instanceVariableNames: 'target sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASCascade class' category: 'ASTSmalltalk-AST'!
ASCascade class
	instanceVariableNames: ''!

!classDefinition: #ASLiteral category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASLiteral
	instanceVariableNames: 'literal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASLiteral class' category: 'ASTSmalltalk-AST'!
ASLiteral class
	instanceVariableNames: ''!

!classDefinition: #ASRef category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASRef
	instanceVariableNames: 'variable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASRef class' category: 'ASTSmalltalk-AST'!
ASRef class
	instanceVariableNames: ''!

!classDefinition: #ASRepeat category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASRepeat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASRepeat class' category: 'ASTSmalltalk-AST'!
ASRepeat class
	instanceVariableNames: ''!

!classDefinition: #ASSelf category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASSelf
	instanceVariableNames: 'method superclass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASSelf class' category: 'ASTSmalltalk-AST'!
ASSelf class
	instanceVariableNames: ''!

!classDefinition: #ASSend category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASSend
	instanceVariableNames: 'target selector args'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASSend class' category: 'ASTSmalltalk-AST'!
ASSend class
	instanceVariableNames: ''!

!classDefinition: #ASSwitch category: 'ASTSmalltalk-AST'!
ASExpression subclass: #ASSwitch
	instanceVariableNames: 'map'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASSwitch class' category: 'ASTSmalltalk-AST'!
ASSwitch class
	instanceVariableNames: ''!

!classDefinition: #ASSwitchClass category: 'ASTSmalltalk-AST'!
ASSwitch subclass: #ASSwitchClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASSwitchClass class' category: 'ASTSmalltalk-AST'!
ASSwitchClass class
	instanceVariableNames: ''!

!classDefinition: #ASSwitchValue category: 'ASTSmalltalk-AST'!
ASSwitch subclass: #ASSwitchValue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASSwitchValue class' category: 'ASTSmalltalk-AST'!
ASSwitchValue class
	instanceVariableNames: ''!

!classDefinition: #ASReturn category: 'ASTSmalltalk-AST'!
ASStatement subclass: #ASReturn
	instanceVariableNames: 'expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASReturn class' category: 'ASTSmalltalk-AST'!
ASReturn class
	instanceVariableNames: ''!

!classDefinition: #ASVariable category: 'ASTSmalltalk-AST'!
Object subclass: #ASVariable
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASVariable class' category: 'ASTSmalltalk-AST'!
ASVariable class
	instanceVariableNames: ''!

!classDefinition: #ASArg category: 'ASTSmalltalk-AST'!
ASVariable subclass: #ASArg
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASArg class' category: 'ASTSmalltalk-AST'!
ASArg class
	instanceVariableNames: ''!

!classDefinition: #ASClassVar category: 'ASTSmalltalk-AST'!
ASVariable subclass: #ASClassVar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASClassVar class' category: 'ASTSmalltalk-AST'!
ASClassVar class
	instanceVariableNames: ''!

!classDefinition: #ASGlobal category: 'ASTSmalltalk-AST'!
ASVariable subclass: #ASGlobal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASGlobal class' category: 'ASTSmalltalk-AST'!
ASGlobal class
	instanceVariableNames: ''!

!classDefinition: #ASInstance category: 'ASTSmalltalk-AST'!
ASVariable subclass: #ASInstance
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASInstance class' category: 'ASTSmalltalk-AST'!
ASInstance class
	instanceVariableNames: ''!

!classDefinition: #ASLocal category: 'ASTSmalltalk-AST'!
ASVariable subclass: #ASLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-AST'!
!classDefinition: 'ASLocal class' category: 'ASTSmalltalk-AST'!
ASLocal class
	instanceVariableNames: ''!

!classDefinition: #ASCheckMethodVisitor category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASCheckMethodVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASCheckMethodVisitor class' category: 'ASTSmalltalk-Compiler'!
ASCheckMethodVisitor class
	instanceVariableNames: ''!

!classDefinition: #ASCheckTraditionalMethodVisitor category: 'ASTSmalltalk-Compiler'!
ASCheckMethodVisitor subclass: #ASCheckTraditionalMethodVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASCheckTraditionalMethodVisitor class' category: 'ASTSmalltalk-Compiler'!
ASCheckTraditionalMethodVisitor class
	instanceVariableNames: ''!

!classDefinition: #ASCompiler category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASCompiler
	instanceVariableNames: 'classes methods selectors definingClass definingMethod currentScope freeSelectors methodsAlreadyProcessed methodsToProcess'
	classVariableNames: 'ClassIndices ClassMap'
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASCompiler class' category: 'ASTSmalltalk-Compiler'!
ASCompiler class
	instanceVariableNames: 'ClassIndices ClassMap'!

!classDefinition: #ASSourceCompiler category: 'ASTSmalltalk-Compiler'!
ASCompiler subclass: #ASSourceCompiler
	instanceVariableNames: 'class scope aScanner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASSourceCompiler class' category: 'ASTSmalltalk-Compiler'!
ASSourceCompiler class
	instanceVariableNames: ''!

!classDefinition: #ASInlineVisitor category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASInlineVisitor
	instanceVariableNames: 'inline replacements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASInlineVisitor class' category: 'ASTSmalltalk-Compiler'!
ASInlineVisitor class
	instanceVariableNames: ''!

!classDefinition: #ASPharoVisitor category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASPharoVisitor
	instanceVariableNames: 'compiler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASPharoVisitor class' category: 'ASTSmalltalk-Compiler'!
ASPharoVisitor class
	instanceVariableNames: ''!

!classDefinition: #ASScanner category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASScanner
	instanceVariableNames: 'aStream peek'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASScanner class' category: 'ASTSmalltalk-Compiler'!
ASScanner class
	instanceVariableNames: ''!

!classDefinition: #ASZigGenerator category: 'ASTSmalltalk-Compiler'!
Object subclass: #ASZigGenerator
	instanceVariableNames: 'compiler stream'
	classVariableNames: 'Symbols'
	poolDictionaries: ''
	category: 'ASTSmalltalk-Compiler'!
!classDefinition: 'ASZigGenerator class' category: 'ASTSmalltalk-Compiler'!
ASZigGenerator class
	instanceVariableNames: 'Symbols'!

!classDefinition: #ASTThreadFormat category: 'ASTSmalltalk-Threaded'!
Object subclass: #ASTThreadFormat
	instanceVariableNames: 'stream method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Threaded'!
!classDefinition: 'ASTThreadFormat class' category: 'ASTSmalltalk-Threaded'!
ASTThreadFormat class
	instanceVariableNames: ''!

!classDefinition: #ASToken category: 'ASTSmalltalk-Tokens'!
Object subclass: #ASToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASToken class' category: 'ASTSmalltalk-Tokens'!
ASToken class
	instanceVariableNames: ''!

!classDefinition: #ASSimple category: 'ASTSmalltalk-Tokens'!
ASToken subclass: #ASSimple
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSimple class' category: 'ASTSmalltalk-Tokens'!
ASSimple class
	instanceVariableNames: ''!

!classDefinition: #ASArrayBuildToken category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASArrayBuildToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASArrayBuildToken class' category: 'ASTSmalltalk-Tokens'!
ASArrayBuildToken class
	instanceVariableNames: ''!

!classDefinition: #ASBlockStartToken category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASBlockStartToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASBlockStartToken class' category: 'ASTSmalltalk-Tokens'!
ASBlockStartToken class
	instanceVariableNames: ''!

!classDefinition: #ASIdentifier category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASIdentifier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASIdentifier class' category: 'ASTSmalltalk-Tokens'!
ASIdentifier class
	instanceVariableNames: ''!

!classDefinition: #ASBinaryId category: 'ASTSmalltalk-Tokens'!
ASIdentifier subclass: #ASBinaryId
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASBinaryId class' category: 'ASTSmalltalk-Tokens'!
ASBinaryId class
	instanceVariableNames: ''!

!classDefinition: #ASBarToken category: 'ASTSmalltalk-Tokens'!
ASBinaryId subclass: #ASBarToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASBarToken class' category: 'ASTSmalltalk-Tokens'!
ASBarToken class
	instanceVariableNames: ''!

!classDefinition: #ASImproperId category: 'ASTSmalltalk-Tokens'!
ASIdentifier subclass: #ASImproperId
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASImproperId class' category: 'ASTSmalltalk-Tokens'!
ASImproperId class
	instanceVariableNames: ''!

!classDefinition: #ASKeywordId category: 'ASTSmalltalk-Tokens'!
ASIdentifier subclass: #ASKeywordId
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASKeywordId class' category: 'ASTSmalltalk-Tokens'!
ASKeywordId class
	instanceVariableNames: ''!

!classDefinition: #ASUnaryId category: 'ASTSmalltalk-Tokens'!
ASIdentifier subclass: #ASUnaryId
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASUnaryId class' category: 'ASTSmalltalk-Tokens'!
ASUnaryId class
	instanceVariableNames: ''!

!classDefinition: #ASLiteralListToken category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASLiteralListToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASLiteralListToken class' category: 'ASTSmalltalk-Tokens'!
ASLiteralListToken class
	instanceVariableNames: ''!

!classDefinition: #ASLiteralToken category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASLiteralToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASLiteralToken class' category: 'ASTSmalltalk-Tokens'!
ASLiteralToken class
	instanceVariableNames: ''!

!classDefinition: #ASSpecial category: 'ASTSmalltalk-Tokens'!
ASLiteralToken subclass: #ASSpecial
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSpecial class' category: 'ASTSmalltalk-Tokens'!
ASSpecial class
	instanceVariableNames: ''!

!classDefinition: #ASSelfToken category: 'ASTSmalltalk-Tokens'!
ASSpecial subclass: #ASSelfToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSelfToken class' category: 'ASTSmalltalk-Tokens'!
ASSelfToken class
	instanceVariableNames: ''!

!classDefinition: #ASString category: 'ASTSmalltalk-Tokens'!
ASLiteralToken subclass: #ASString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASString class' category: 'ASTSmalltalk-Tokens'!
ASString class
	instanceVariableNames: ''!

!classDefinition: #ASSymbol category: 'ASTSmalltalk-Tokens'!
ASString subclass: #ASSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSymbol class' category: 'ASTSmalltalk-Tokens'!
ASSymbol class
	instanceVariableNames: ''!

!classDefinition: #ASOpenParenToken category: 'ASTSmalltalk-Tokens'!
ASSimple subclass: #ASOpenParenToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASOpenParenToken class' category: 'ASTSmalltalk-Tokens'!
ASOpenParenToken class
	instanceVariableNames: ''!

!classDefinition: #ASSyntax category: 'ASTSmalltalk-Tokens'!
ASToken subclass: #ASSyntax
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSyntax class' category: 'ASTSmalltalk-Tokens'!
ASSyntax class
	instanceVariableNames: ''!

!classDefinition: #ASAssignmentToken category: 'ASTSmalltalk-Tokens'!
ASSyntax subclass: #ASAssignmentToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASAssignmentToken class' category: 'ASTSmalltalk-Tokens'!
ASAssignmentToken class
	instanceVariableNames: ''!

!classDefinition: #ASClosers category: 'ASTSmalltalk-Tokens'!
ASSyntax subclass: #ASClosers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASClosers class' category: 'ASTSmalltalk-Tokens'!
ASClosers class
	instanceVariableNames: ''!

!classDefinition: #ASArrayEndToken category: 'ASTSmalltalk-Tokens'!
ASClosers subclass: #ASArrayEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASArrayEndToken class' category: 'ASTSmalltalk-Tokens'!
ASArrayEndToken class
	instanceVariableNames: ''!

!classDefinition: #ASBlockEndToken category: 'ASTSmalltalk-Tokens'!
ASClosers subclass: #ASBlockEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASBlockEndToken class' category: 'ASTSmalltalk-Tokens'!
ASBlockEndToken class
	instanceVariableNames: ''!

!classDefinition: #ASCascadeToken category: 'ASTSmalltalk-Tokens'!
ASClosers subclass: #ASCascadeToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASCascadeToken class' category: 'ASTSmalltalk-Tokens'!
ASCascadeToken class
	instanceVariableNames: ''!

!classDefinition: #ASCloseParenToken category: 'ASTSmalltalk-Tokens'!
ASClosers subclass: #ASCloseParenToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASCloseParenToken class' category: 'ASTSmalltalk-Tokens'!
ASCloseParenToken class
	instanceVariableNames: ''!

!classDefinition: #ASEnd category: 'ASTSmalltalk-Tokens'!
ASClosers subclass: #ASEnd
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASEnd class' category: 'ASTSmalltalk-Tokens'!
ASEnd class
	instanceVariableNames: ''!

!classDefinition: #ASSeparatorToken category: 'ASTSmalltalk-Tokens'!
ASClosers subclass: #ASSeparatorToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASSeparatorToken class' category: 'ASTSmalltalk-Tokens'!
ASSeparatorToken class
	instanceVariableNames: ''!

!classDefinition: #ASColonToken category: 'ASTSmalltalk-Tokens'!
ASSyntax subclass: #ASColonToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASColonToken class' category: 'ASTSmalltalk-Tokens'!
ASColonToken class
	instanceVariableNames: ''!

!classDefinition: #ASParrotToken category: 'ASTSmalltalk-Tokens'!
ASSyntax subclass: #ASParrotToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASParrotToken class' category: 'ASTSmalltalk-Tokens'!
ASParrotToken class
	instanceVariableNames: ''!

!classDefinition: #ASReturnToken category: 'ASTSmalltalk-Tokens'!
ASSyntax subclass: #ASReturnToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Tokens'!
!classDefinition: 'ASReturnToken class' category: 'ASTSmalltalk-Tokens'!
ASReturnToken class
	instanceVariableNames: ''!

!classDefinition: #ASTBlock category: 'ASTSmalltalk-IR'!
Object subclass: #ASTBlock
	instanceVariableNames: 'blockNumber sequence'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTBlock class' category: 'ASTSmalltalk-IR'!
ASTBlock class
	instanceVariableNames: ''!

!classDefinition: #ASTIrMethod category: 'ASTSmalltalk-IR'!
Object subclass: #ASTIrMethod
	instanceVariableNames: 'primitive selector numArgs tempMap startBlockNumber blocks'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTIrMethod class' category: 'ASTSmalltalk-IR'!
ASTIrMethod class
	instanceVariableNames: ''!

!classDefinition: #ASTJump category: 'ASTSmalltalk-IR'!
Object subclass: #ASTJump
	instanceVariableNames: 'destination'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTJump class' category: 'ASTSmalltalk-IR'!
ASTJump class
	instanceVariableNames: ''!

!classDefinition: #ASTJumpFalse category: 'ASTSmalltalk-IR'!
ASTJump subclass: #ASTJumpFalse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTJumpFalse class' category: 'ASTSmalltalk-IR'!
ASTJumpFalse class
	instanceVariableNames: ''!

!classDefinition: #ASTJumpTrue category: 'ASTSmalltalk-IR'!
ASTJump subclass: #ASTJumpTrue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTJumpTrue class' category: 'ASTSmalltalk-IR'!
ASTJumpTrue class
	instanceVariableNames: ''!

!classDefinition: #ASTPop category: 'ASTSmalltalk-IR'!
Object subclass: #ASTPop
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTPop class' category: 'ASTSmalltalk-IR'!
ASTPop class
	instanceVariableNames: ''!

!classDefinition: #ASTPushLiteral category: 'ASTSmalltalk-IR'!
Object subclass: #ASTPushLiteral
	instanceVariableNames: 'literal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTPushLiteral class' category: 'ASTSmalltalk-IR'!
ASTPushLiteral class
	instanceVariableNames: ''!

!classDefinition: #ASTTemps category: 'ASTSmalltalk-IR'!
Object subclass: #ASTTemps
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTTemps class' category: 'ASTSmalltalk-IR'!
ASTTemps class
	instanceVariableNames: ''!

!classDefinition: #ASTPopIntoTemp category: 'ASTSmalltalk-IR'!
ASTTemps subclass: #ASTPopIntoTemp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTPopIntoTemp class' category: 'ASTSmalltalk-IR'!
ASTPopIntoTemp class
	instanceVariableNames: ''!

!classDefinition: #ASTPushTemp category: 'ASTSmalltalk-IR'!
ASTTemps subclass: #ASTPushTemp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTPushTemp class' category: 'ASTSmalltalk-IR'!
ASTPushTemp class
	instanceVariableNames: ''!

!classDefinition: #ASTStoreTemp category: 'ASTSmalltalk-IR'!
ASTTemps subclass: #ASTStoreTemp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-IR'!
!classDefinition: 'ASTStoreTemp class' category: 'ASTSmalltalk-IR'!
ASTStoreTemp class
	instanceVariableNames: ''!

!classDefinition: #ASGenerator category: 'ASTSmalltalk-Image'!
Object subclass: #ASGenerator
	instanceVariableNames: 'fields header address extra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ASTSmalltalk-Image'!
!classDefinition: 'ASGenerator class' category: 'ASTSmalltalk-Image'!
ASGenerator class
	instanceVariableNames: ''!

!classDefinition: #ASImage category: 'ASTSmalltalk-Image'!
Object subclass: #ASImage
	instanceVariableNames: 'symbols classes baseAddress aStream currentAddress objects process output newClasses selectors newSelectors methods'
	classVariableNames: 'BaseAddress ClassMask FormatMask FormatShift HashMask HashShift SizeMask SizeShift'
	poolDictionaries: ''
	category: 'ASTSmalltalk-Image'!
!classDefinition: 'ASImage class' category: 'ASTSmalltalk-Image'!
ASImage class
	instanceVariableNames: ''!


!ASClassNode commentStamp: '<historical>' prior: 0!
I represent a Class that contains a number of methods and has super-classes.
!

!ASCodeBlock commentStamp: '<historical>' prior: 0!
I represent a block of code.

!

!ASInline commentStamp: '<historical>' prior: 0!
I represent an inlined function. I have locals and a body, but no parameters because they will have all been inlined.
!

!ASMethodOrBlock commentStamp: '<historical>' prior: 0!
I contain all the common respersentation for Methods and Blocks
!

!ASBlock commentStamp: '<historical>' prior: 0!
I represent a BlockClosure which like a Method except that returns return from the enclosing method and self refers to the object of the enclosing method.

Note that this is also an ASExpression although the class taxonomy doesn't reflect it.
!

!ASMethodNode commentStamp: '<historical>' prior: 0!
I represent a method, which is the same as a Block except that the return must be explicit
!

!ASStatement commentStamp: '<historical>' prior: 0!
I have subclasses for all the statments that can exist in the body of a method or a block.
!

!ASExpression commentStamp: '<historical>' prior: 0!
I have subclasses for all the expressions that can exist.

Note that ASBlock is also an ASExpression although the class taxonomy doesn't reflect it.
!

!ASArray commentStamp: '<historical>' prior: 0!
I create an array from a sequence of expressions { axp1 . exp2 }
!

!ASAssign commentStamp: '<historical>' prior: 0!
I represent an assignment expression. This stores the value of an expression in a variable (local, inherited local, instance, class, shared).
!

!ASCascade commentStamp: '<historical>' prior: 0!
I am a cascade send. I take a target expression and a list of ASSends without targets.
!

!ASLiteral commentStamp: '<historical>' prior: 0!
I represent any literal value.
!

!ASRef commentStamp: '<historical>' prior: 0!
I represent a reference to a variable (local, parameters, inherited local/parameters, instance, class, shared).
!

!ASRepeat commentStamp: '<historical>' prior: 0!
I represent a loop.

I am only generated as part of inlining and compilation

I am always the result of an #whileTrue: or related message, or other tail-recursive methods
!

!ASSelf commentStamp: '<historical>' prior: 0!
I represent a reference to self or super.

I have a field pointing to the method of the object I represent.

If I represent "super" then the reference to superclass will point to the class for the dispatch
!

!ASSend commentStamp: '<historical>' prior: 0!
I represent an expression that is a message send.
!

!ASSwitch commentStamp: '<historical>' prior: 0!
I represent an inline choice.

I am only generated as part of inlining and compilation
!

!ASSwitchClass commentStamp: '<historical>' prior: 0!
I switch on the class of the expression
!

!ASSwitchValue commentStamp: '<historical>' prior: 0!
I switch on the value of the expression. Mostly used for booleans and constant equality tests.
!

!ASReturn commentStamp: '<historical>' prior: 0!
I am the only non-expression statement type
!

!ASVariable commentStamp: '<historical>' prior: 0!
I represent a variable (local, parameters, inherited local/parameters, instance, class, shared).
!

!ASArg commentStamp: '<historical>' prior: 0!
I represent an argument to a method or a block
!

!ASClassVar commentStamp: '<historical>' prior: 0!
I represent a class variable
!

!ASGlobal commentStamp: '<historical>' prior: 0!
I represent a global (most likely a class)
!

!ASInstance commentStamp: '<historical>' prior: 0!
I represent an instance variable
!

!ASLocal commentStamp: '<historical>' prior: 0!
I represent a local (temporary) variable
!

!ASCheckMethodVisitor commentStamp: '<historical>' prior: 0!
I am a visitor that walks a method looking for inlining opportunities.
!

!ASCheckTraditionalMethodVisitor commentStamp: '<historical>' prior: 0!
I am a visitor that recognizes the traditional methods for inlining:
ifTrue: and related
ifNil: and related
whileTrue: and related
to:by:do:, to:do: and timesRepeat:
!

!ASCompiler commentStamp: '<historical>' prior: 0!
I implement the generic code for a Smalltalk -> AST compiler.

I have subclasses to accept various input formats, notably Pharo ASTs and sourcecode
!

!ASSourceCompiler commentStamp: '<historical>' prior: 0!
I compile Smalltalk source from a Tonel file into a class with methods expressed as ASTs
!

!ASInlineVisitor commentStamp: '<historical>' prior: 0!
I am a visitor to inline parameters into a method - updating an ASInline object that will replace a send in some code.
!

!ASPharoVisitor commentStamp: '<historical>' prior: 0!
I implement the visitor pattern to walk a Pharo AST and transform it to our AST.
!

!ASScanner commentStamp: '<historical>' prior: 0!
I am the scanner used by the ASCompile compiler

I accept Unicode and will treat many special characters as binary message name characters, and most letters in various scripts as unary or keyword message names.
!

!ASZigGenerator commentStamp: '<historical>' prior: 0!
I generate Zig code equivalent to the built program captured by an ASCompiler
!

!ASTThreadFormat commentStamp: '<historical>' prior: 0!
I format an IRMethod to generate Zig code to create a method thread.
!

!ASToken commentStamp: '<historical>' prior: 0!
I am the tokens for the AST scanner
!

!ASTIrMethod commentStamp: '<historical>' prior: 0!
I represent a method in AST Intermediate Represeantation, which parallels the Opal IR
!

!ASGenerator commentStamp: '<historical>' prior: 0!
I handle all the in-heap objects, except BlockClosures.

When first called, I ask the image writer to allocate space for me, and schedule me for processing, then I gather all the fields and indexable elements from the object.

When processing, I look up all the objects and get the appropriate heap object for them.

Finally I am called to write the fields so I output the header, a possible supplementary size, and all the values I accumulated.

This 3-phase process is (a) to handle cycles in the heap, and (b) to allow the heap size, classes and symbols to be known right after the image header.
!

!ASImage commentStamp: '<historical>' prior: 0!
I write out ASTSmalltalk images
!

!ASClassNode methodsFor: 'comparing' stamp: 'KenD 11/29/2022 14:59:26'!
= other
	^ name = other name
! !

!ASClassNode methodsFor: 'comparing' stamp: 'KenD 11/29/2022 14:59:26'!
hash
	^ name hash
! !

!ASClassNode methodsFor: 'accessing' stamp: 'KenD 11/29/2022 14:59:26'!
name

	^ name
! !

!ASClassNode methodsFor: 'initialization' stamp: 'KenD 11/29/2022 14:59:26'!
from: aClass

	name := aClass name.
	self halt.
	classVariables := aClass classPool keys
! !

!ASCodeBlock methodsFor: 'scopes' stamp: 'KenD 11/29/2022 15:34:28'!
lookup: symbol
	^ scope at: symbol ifAbsent: [ nestedScopeOf lookup: symbol ]
! !

!ASCodeBlock methodsFor: 'scopes' stamp: 'KenD 11/29/2022 15:34:28'!
nestedScopeOf: anASClassNode
	nestedScopeOf := anASClassNode
! !

!ASCodeBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:34:28'!
addStatement: anASStatement

	body add: anASStatement
! !

!ASCodeBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:34:28'!
body
	^ body
! !

!ASCodeBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:34:28'!
body: anASNode
	body := anASNode
! !

!ASCodeBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:34:28'!
locals

	^ locals
! !

!ASCodeBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:34:28'!
locals: aCollection

	locals := aCollection
		          collect: [ :symbol | 
			          | local |
			          local := ASLocal name: symbol.
			          scope at: symbol put: local.
			local ]
		          as: Array
! !

!ASCodeBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:34:28'!
scope
	^ scope
! !

!ASCodeBlock methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:34:28'!
initialize

	super initialize.
	locals := #(  ).
	body := OrderedCollection new.
	scope := Dictionary new
! !

!ASCodeBlock methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:34:28'!
= other

	^ self class = other class and: [ 
		locals = other locals and: [ body asArray = other body asArray ] ]
! !

!ASCodeBlock methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:34:28'!
printOn: s

	locals isEmpty ifFalse: [ 
		s << ' locals: #('.
		locals do: [ :local | s << local name ] separatedBy: [ s << ' ' ].
		s<<')' ].
	s << ' body: {'.
	body do: [ :arg | arg printOn: s ] separatedBy: [ s << ' . ' ].
	s << '}'
! !

!ASMethodOrBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:37:37'!
arguments
	^ arguments
! !

!ASMethodOrBlock methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:37:37'!
arguments: aCollection

	arguments := aCollection
		collect: [ :symbol | 
			| arg |
			arg := ASArg name: symbol.
			scope at: symbol put: arg.
			arg ]
		as: Array
! !

!ASMethodOrBlock methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:37:37'!
= other

	^ super = other and: [ 
		  self arguments = other arguments  ]
! !

!ASMethodOrBlock methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:37:37'!
initialize

	super initialize.
	arguments := #(  )
! !

!ASMethodOrBlock methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:37:37'!
printOn: s

	arguments isEmpty ifFalse: [ 
		s << ' arguments: #('.
		arguments do: [ :arg| s<< arg name] separatedBy: [ s<<' ' ].
		s<< ')' ].
	super printOn: s
! !

!ASBlock methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:42:39'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sent: aSymbol toBlock: self
! !

!ASBlock methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:42:39'!
printOn: s

	s << self className.
	super printOn: s
! !

!ASBlock class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:42:39'!
arguments: args body: body

	^ self new
		  arguments: args;
		  body: body
! !

!ASBlock class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:42:39'!
arguments: args locals: locals body: body

	^ self new
		  arguments: args;
		  locals: locals;
		  body: body
! !

!ASBlock class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:42:39'!
locals: locals body: body

	^ self new
		  locals: locals;
		  body: body
! !

!ASMethodNode methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:51:34'!
= other

	^ super = other and: [ 
			  self selector = other selector and: [ 
				  self className = other className ] ]
! !

!ASMethodNode methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:51:34'!
hash
	^ class hash bitXor: selector hash
! !

!ASMethodNode methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:51:34'!
class: anASClassNode
	class := anASClassNode
! !

!ASMethodNode methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:51:34'!
className
	^ class name
! !

!ASMethodNode methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:51:34'!
selector
	^ selector
! !

!ASMethodNode methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:51:34'!
selector: aString
	selector := aString
! !

!ASMethodNode methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:51:34'!
acceptVisitor: aVisitor

	^ aVisitor visitMethodNode: self
! !

!ASMethodNode methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:51:34'!
printOn: s

	s << self class name << ' class: ' << class name
	<< ' selector: '.
	selector printOn: s.
	super printOn: s
! !

!ASMethodNode class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:51:34'!
class: aClass selector: aSymbol arguments: args body: body

	^ self new
		  class: aClass;
		  selector: aSymbol;
		  arguments: args;
		  body: body
! !

!ASMethodNode class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:51:34'!
class: aClass selector: aSymbol arguments: args locals: locals body: body
^ self new class: aClass; selector: aSymbol;  arguments: args; locals: locals; body: body
! !

!ASMethodNode class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:51:34'!
class: aClass selector: aSymbol body: body

	^ self new
		  class: aClass;
		  selector: aSymbol;
		  body: body
! !

!ASMethodNode class methodsFor: 'tests - instance creation' stamp: 'KenD 11/29/2022 15:51:34'!
class: aClass selector: aSymbol locals: locals body: body

	^ self new
		  class: aClass;
		  selector: aSymbol;
		  locals: locals;
		  body: body
! !

!ASExpression methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:24:56'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sentToUnknownObject: aSymbol
! !

!ASArray methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:40:48'!
statements

	^ statements
! !

!ASArray methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:40:48'!
statements: aCollection
	statements := aCollection
! !

!ASArray methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:40:48'!
= other

	^ self class = other class and: [ 
			  self statements = other statements ]
! !

!ASArray methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:40:48'!
printOn: s
	s << self class name << ' statements: {'.
	statements do: [: statement| statement printOn: s ] separatedBy: [ s << ' . ' ].
	s << '}'
! !

!ASArray class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:40:48'!
statements: aCollection
	^ self new statements: aCollection
! !

!ASAssign methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:41:38'!
= other

	^ self class = other class and: [ self variable = other variable and: [ self expression = other expression ] ]
! !

!ASAssign methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:41:38'!
expression
	^ expression
! !

!ASAssign methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:41:38'!
variable
	^ variable
! !

!ASAssign methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:41:38'!
tell: aCompiler youAreSent: aSymbol

	^ expression tell: aCompiler youAreSent: aSymbol
! !

!ASAssign methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:41:38'!
printOn: s

	s << self className << ' variable: '.
	variable printOn: s.
	s << ' expression: ('.
	expression printOn: s.
	s << ')'
! !

!ASAssign methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:41:38'!
variable: v expression: e

	variable := v.
	expression := e
! !

!ASAssign class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:41:38'!
variable: v expression: e
^ self new variable: v expression: e
! !

!ASCascade methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:15'!
sends

	^ sends
! !

!ASCascade methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:15'!
sends: aCollection

	sends := aCollection
! !

!ASCascade methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:15'!
target

	^ target
! !

!ASCascade methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:15'!
target: expression

	target := expression 
! !

!ASCascade methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:33:15'!
= other

	^ self class = other class and: [ 
		  self target = other target and: [ 
			  self sends = other sends ] ]
! !

!ASCascade methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:33:15'!
printOn: s

	s << self className << ' target: ('.
	target printOn: s.
	s << ') sends: {'.
	sends do: [ :send | send printOn: s ] separatedBy: [ s << '.' ].
	s << '}'
! !

!ASCascade class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:33:15'!
target: t sends: s
	^ self new target: t; sends: s
! !

!ASLiteral methodsFor: 'as yet unclassified' stamp: 'KenD 11/29/2022 15:36:56'!
baseValue
	^ value
! !

!ASLiteral methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:36:56'!
= other

	^ self class = other class and: [ self literal = other literal ]
! !

!ASLiteral methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:36:56'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sent: aSymbol toLiteral: literal
! !

!ASLiteral methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:36:56'!
literal

	^ literal
! !

!ASLiteral methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:36:56'!
literal: aLiteralObject

	literal := aLiteralObject
! !

!ASLiteral methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:36:56'!
acceptVisitor: aVisitor

	^ aVisitor visitLiteral: self
! !

!ASLiteral methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:36:56'!
printOn: s

	s << self className << ' literal: '.
	literal printOn: s
! !

!ASLiteral class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:36:56'!
literal: aLiteralObject
	^ self new literal: aLiteralObject
! !

!ASRef methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:38:40'!
= other

	^ self class = other class and: [ self variable = other variable ]
! !

!ASRef methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:38:40'!
variable

	^ variable
! !

!ASRef methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:38:40'!
variable: aSymbol

	variable := aSymbol
! !

!ASRef methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:38:40'!
printOn: s

	s << self className << ' variable: ('.
	variable printOn: s.
	s << ')'
! !

!ASRef class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:38:40'!
variable: aSymbol
^ self new variable: aSymbol
! !

!ASSelf methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:39:22'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sent: aSymbol toSelf: self
! !

!ASSelf methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:39:22'!
= other

	^ self class = other class and: [ 
		  (self method isSymbol
			   ifTrue: [ self method ]
			   ifFalse: [ self method selector ]) = (other method isSymbol
			   ifTrue: [ other method ]
			   ifFalse: [ other method selector ]) and: [ 
			  self superclass = other superclass ] ]
! !

!ASSelf methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:39:22'!
method

	^ method
! !

!ASSelf methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:39:22'!
method: aMethod

	method := aMethod
! !

!ASSelf methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:39:22'!
superclass

	^ superclass
! !

!ASSelf methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:39:22'!
superclass: aClass

	superclass := aClass
! !

!ASSelf methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:39:22'!
acceptVisitor: aVisitor

	^ aVisitor visitSelfNode: self
! !

!ASSelf methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:39:22'!
printOn: s

	s << self className << ' method: '.
	(method isSymbol ifTrue: [method] ifFalse: [method selector]) printOn: s.
	superclass ifNotNil: [ s << ' superclass: ' << superclass name ]
! !

!ASSelf class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:39:22'!
method: aMethod

	^ self new method: aMethod
! !

!ASSelf class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:39:22'!
method: aMethod superclass: aClass

	^ self new method: aMethod; superclass: aClass
! !

!ASSend methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:39:47'!
= other

	^ self class = other class and: [ 
		  self selector = other selector and: [ 
			  self target = other target and: [ self args = other args ] ] ]
! !

!ASSend methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:47'!
args
	^ args
! !

!ASSend methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:47'!
selector
	^ selector
! !

!ASSend methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:47'!
selector: aSymbol args: aCollection

	selector := aSymbol.
	args := aCollection
! !

!ASSend methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:47'!
target

	^ target
! !

!ASSend methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:47'!
target: expression
	target := expression
! !

!ASSend methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:39:47'!
acceptVisitor: aVisitor

	^ aVisitor visitSend: self
! !

!ASSend methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:39:47'!
printOn: s

	s << self className.
	target ifNotNil: [ 
		s << ' target: ('.
		target printOn: s.
		s << ')' ].
	s << ' selector: '.
	selector printOn: s.
	s << ' args: {'.
	args do: [ :arg | arg printOn: s ] separatedBy: [ s << ' . ' ].
	s << '}'
! !

!ASSend class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:39:47'!
selector: aSymbol args: aCollection

	^ self new selector: aSymbol args: aCollection
! !

!ASSend class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:39:47'!
target: expression selector: aSymbol args: aCollection

	^ self new target: expression; selector: aSymbol args: aCollection
! !

!ASSwitch methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:46:07'!
isClass
	^ self subclassResponsibility
! !

!ASSwitchClass methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:46:50'!
isClass
	^ true
! !

!ASSwitchValue methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:46:24'!
isClass
	^ false
! !

!ASReturn methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:24:12'!
expression

	^ expression
! !

!ASReturn methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:24:12'!
expression: anASNode
	expression := anASNode
! !

!ASReturn methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:24:12'!
= other

	^ self class = other class and: [ self expression = other expression ]
! !

!ASReturn methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:24:12'!
isReturn
	^ true
! !

!ASReturn methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:24:12'!
acceptVisitor: aVisitor

	^ aVisitor visitReturn: self
! !

!ASReturn methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:24:12'!
printOn: s

	s << self className << ' expression: ('.
	expression printOn: s.
	s << ')'
! !

!ASReturn class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:24:12'!
expression: anASNode
^self new expression: anASNode
! !

!ASVariable methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:16:20'!
tell: aCompiler youAreSent: aSymbol

	^ aCompiler sentToUnknownObject: aSymbol
! !

!ASVariable methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:16:20'!
= other

	^ self class = other class and: [ self name = other name ]
! !

!ASVariable methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:16:20'!
name

	^ name
! !

!ASVariable methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:16:20'!
name: aSymbol

	name := aSymbol
! !

!ASVariable methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:16:20'!
printOn: s

	s << self className << ' ' <<
	name 
! !

!ASVariable class methodsFor: 'reflective operations' stamp: 'KenD 11/29/2022 15:16:20'!
doesNotUnderstand: aMessage

	aMessage selector numArgs > 0 ifTrue: [ 
		^ super doesNotUnderstand: aMessage ].
	^ self name: aMessage selector
! !

!ASVariable class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:16:20'!
name: aString
	^ self new name: aString
! !

!ASGlobal methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:35:15'!
tell: aCompiler youAreSent: aSymbol

	aCompiler sent: aSymbol toGlobal: name
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
compileMethod: aCompiledMethod
	^ self subclassResponsibility 
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
definingClass: aClass

	definingClass := aClass.
	classes add: aClass instanceSide.
	classes add: aClass classSide.
	currentScope := aClass
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
definingMethod: aMethod
	definingMethod := aMethod.
	methods add: aMethod
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
inScope: anASMethodOrBlock do: aFullBlockClosure
	| savedScope |
	savedScope := currentScope.
	currentScope := anASMethodOrBlock.
	aFullBlockClosure ensure: [ currentScope := savedScope ]
! !

!ASCompiler methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:01:08'!
lookup: aSymbol
	^ currentScope lookup: aSymbol
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
classes

	^ classes collect: #instanceSide
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
definingClass
	^ definingClass
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
definingMethod
	^ definingMethod
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
methods
	^ methods
! !

!ASCompiler methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:01:08'!
selectors
	^ selectors
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toBlock: anASBlock

		self send: selector toClass: BlockClosure 
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toGlobal: string

		self send: selector toClass: (Smalltalk at: string asSymbol)
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toLiteral: aLiteral

	self send: selector toClass: aLiteral class
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sent: selector toSelf: unused

		self send: selector toClass: definingClass
! !

!ASCompiler methodsFor: 'notifying' stamp: 'KenD 11/29/2022 15:01:08'!
sentToUnknownObject: selector

	freeSelectors add: selector.
	classes do: [ : aClass | 	self send: selector toClass: aClass ]
! !

!ASCompiler methodsFor: 'inlining' stamp: 'KenD 11/29/2022 15:01:08'!
inlineMethods
	methods do: [ : aMethod |
		ASCheckMethodVisitor new visit: aMethod ]
! !

!ASCompiler methodsFor: 'inlining' stamp: 'KenD 11/29/2022 15:01:08'!
inlineTraditionalMethods

	methods do: [ :aMethod | ASCheckTraditionalMethodVisitor new visit: aMethod ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
addClass: aClass

	| astClass |
	astClass := ClassMap at: aClass ifAbsent: [ 
		            aClass ].
	(classes includes: astClass) ifTrue: [ ^ astClass ].
	classes add: astClass.
	astClass isClassSide
		ifTrue: [ classes add: astClass instanceSide ]
		ifFalse: [ classes add: astClass classSide ].
	freeSelectors do: [ :selector | 
		self send: selector toClass: astClass ].
	^ astClass
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
addMethod: method
	(methodsAlreadyProcessed includes: method) ifFalse: [ methodsToProcess add: method ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
buildFromClass: aClass selector: selector

	self send: selector toClass: aClass.
	self transitiveClosure
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
findClass: aClass

	| astClass |
	astClass := ClassMap at: aClass ifAbsent: [ aClass ].
	(classes includes: astClass) ifTrue: [ ^ astClass ].
	classes add: astClass.
	astClass isClassSide
		ifTrue: [ classes add: astClass instanceSide ]
		ifFalse: [ classes add: astClass classSide ].
	^ astClass
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
selector: selector fromClass: aClass

	^ aClass methodDictionary
		  at: selector
		  ifPresent: [ aClass >> selector ]
		  ifAbsent: [ 
			  aClass superclass ifNotNil: [ :sc | 
				  self selector: selector fromClass: (self addClass: sc) ] ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
send: selector toClass: aClass

	(self selector: selector fromClass: (self addClass: aClass)) ifNotNil: [ :method | 
		selectors add: selector.
		self addMethod: method ]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
transitiveClosure

	| toProcess |
	[ methodsToProcess isEmpty ] whileFalse: [ 
		toProcess := methodsToProcess.
		methodsToProcess := Set new.
				methodsAlreadyProcessed addAll: toProcess.
		toProcess do: [: method |
			self compileMethod: method ].
		]
! !

!ASCompiler methodsFor: 'building' stamp: 'KenD 11/29/2022 15:01:08'!
zigString

	| visitor |
	visitor := ASZigGenerator new compiler: self.
	^ String streamContents: [ :s | 
		  visitor stream: s.
		  methods do: [ :method | visitor visit: method ] ]
! !

!ASCompiler methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:01:08'!
initialize

	super initialize.
	classes := Set new.
	selectors := Set new.
	freeSelectors := Set with: #initialize.
	methods := Set new.
	methodsAlreadyProcessed := Set new.
	methodsToProcess := Set new.
	self addClass: True.
	self addClass: False.
! !

!ASCompiler class methodsFor: 'class initialization' stamp: 'Install-ASTSmalltalk 11/29/2022 15:32:32'!
initialize

	ClassIndices := #( Object False True UndefinedObject Symbol Character
	                   SmallInteger Float Array String Class Metaclass
	                   Behavior BlockClosure Method MethodDictionary
	                   System Return Send Literal Load Store SymbolTable
	                   Dispatch ClassTable Magnitude Number ClassDescription
	                   Boolean ).
	ClassMap := Dictionary new.
	ClassMap at: ByteString put: ASTString.
	ClassMap at: ByteString class put: ASTString class.
	ASTObject withAllSubclassesDo: [ :class | 
		(Smalltalk
			 at: (class name allButFirst: 3) asSymbol
			 ifAbsent: [ nil ]) ifNotNil: [ :pharoClass | 
			ClassMap at: pharoClass instanceSide put: class instanceSide.
			self flag: #FixMe
			"ClassMap at: pharoClass classSide put: class classSide "] ]
! !

!ASSourceCompiler methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:45:19'!
compileMethodInClass: aClass
	| selector args method savedScope |
	args := OrderedCollection new.
	selector := aScanner peek classSelector: self args: args.
	method := ASMethodNode new selector: selector; arguments: args; class: aClass; yourself.
	args do: [ : arg | method add: arg ].
	savedScope := scope.
	[
		scope := method nestedScopeOf: aClass.
		method body: self methodBody
	] ensure: [
		scope := savedScope
	].
	^ method
! !

!ASSourceCompiler methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:45:19'!
localDefs
	aScanner peek defs: self scope: scope.
! !

!ASSourceCompiler methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:45:19'!
methodBody
	| statements |
	self localDefs.
	statements := OrderedCollection new.
	self statements: statements.
	(statements notEmpty and: [statements last isReturn]) ifFalse: [ 
		statements add: (ASReturn new unaryExpression: #self asASSelf)
	].
	aScanner peek expectEnd.
	^ statements
! !

!ASSourceCompiler methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:45:19'!
statements: statements
	| statement |
	[ statement := aScanner peek statement: self ] whileNotNil: [ statements add: statement ].

! !

!ASSourceCompiler methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:19'!
nextToken
	^ aScanner next
! !

!ASSourceCompiler methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:19'!
peek
	^ aScanner peek
! !

!ASSourceCompiler methodsFor: 'compilation' stamp: 'KenD 11/29/2022 15:45:19'!
compileMethod: aMethod
	aScanner := ASScanner new scanCode: aMethod sourceCode readStream.
	^ self compileMethodInClass: (ASClassNode new from: aMethod methodClass)
! !

!ASInlineVisitor methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:36:14'!
initialize
	super initialize.
	replacements := Dictionary new
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visit: aRBNode
	^ aRBNode acceptVisitor: self	
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitArgumentVariableNode: aRBVariableNode

	^ ASRef variable: (ASArg new name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitArrayNode: aRBArrayNode

	^ ASArray statements:
		  (aRBArrayNode statements collect: [ :statement | 
			   self visit: statement ] as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitAssignmentNode: aRBAssignmentNode
	^ ASAssign
		  variable: (compiler lookup: aRBAssignmentNode variable name)
		  expression: (self visit: aRBAssignmentNode value)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitBlockNode: aRBBlockNode

	^ ASBlock
		  arguments: aRBBlockNode argumentNames
		  locals: aRBBlockNode temporaryNames
		  body: (aRBBlockNode statements collect: [ :statement | 
				   self visit: statement ] as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitCascadeNode: aRBCascadeNode

	^ ASCascade
		  target: (self visit: aRBCascadeNode receiver)
		  sends: (aRBCascadeNode messages
				   collect: [ :message | 
					   ASSend
						   selector: message selector
						   args: (message arguments collect: [: arg| self visit: arg  ] as: Array) ]
				   as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitClassVariableNode: aRBVariableNode

	^ ASRef variable: (ASClassVar name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitGlobalVariableNode: aRBVariableNode

	^ ASRef variable: (ASGlobal name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitInstanceVariableNode: aRBVariableNode

	^ ASRef variable: (ASInstance name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitLiteralArrayNode: aRBLiteralArrayNode
	^ ASLiteral literal: (aRBLiteralArrayNode contents collect: #value as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitLiteralValueNode: aRBLiteralValueNode

	^ ASLiteral literal: aRBLiteralValueNode value
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitMessageNode: aRBMessageNode

	| target selector |
	target := self visit: aRBMessageNode receiver.
	selector := aRBMessageNode selector.
	target tell: compiler youAreSent: selector.
	^ ASSend
		  target: target
		  selector: selector args: (aRBMessageNode arguments
				   collect: [ :arg | self visit: arg ]
				   as: Array)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitMethodNode: aRBMethodNode

	| selector method |
	selector := aRBMethodNode selector.
	compiler definingClass: aRBMethodNode methodClass.
	method := ASMethodNode
		          class: aRBMethodNode methodClass
		          selector: selector
		          arguments:
		          (aRBMethodNode arguments collect: #name as: Array)
		          locals:
		          (aRBMethodNode temporaries collect: #name as: Array)
		          body: OrderedCollection new.
	compiler definingMethod: method.
	compiler inScope: method do: [ 
		aRBMethodNode statements do: [ :statement | 
			method addStatement: (self visit: statement) ] ].
	^ method
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitReturnNode: aRBReturnNode

	^ ASReturn expression: (self visit: aRBReturnNode value)
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitSelfNode: aRBVariableNode

	^ ASSelf method: compiler definingMethod.

! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitSuperNode: aRBVariableNode

		^ ASSelf method: compiler definingMethod superclass: compiler definingClass superclass 
! !

!ASPharoVisitor methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:00:28'!
visitTemporaryVariableNode: aRBVariableNode

	^ ASRef variable: (ASLocal name: aRBVariableNode name)
! !

!ASPharoVisitor methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:00:28'!
compiler: anASPharoCompiler
	compiler := anASPharoCompiler
! !

!ASPharoVisitor class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:00:28'!
compiler: anASPharoCompiler
	^ self new compiler: anASPharoCompiler
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
binaryIdentifier
	^ (String streamContents: [: s | | char |
			[
				s << aStream next.
				char := aStream peek.
				aStream atEnd not and: [ char isSpecial ]] whileTrue
		]) asASIdentifier
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
identifier
	^ self identifierString asASIdentifier
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
identifierString
	^ (String streamContents: [: s | | char prevWasColon |
			prevWasColon := false.
			[
				s << aStream next.
				char := aStream peek.
				aStream atEnd not and: [ char tokenish or: [ prevWasColon and: [ ('=>' includes: char) and: [ s setFrom: 1 to: s size-1. s position: s size. false ] ] ]]
			] whileTrue: [
				prevWasColon := char = $:
			]
		])
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
next
	^ self peek ifNotNil: [: t | peek := nil. t ].

! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
number
	^ (String streamContents: [: s |
			[
				s << aStream next.
				aStream atEnd not and: [aStream peek isDigit]
			] whileTrue
		]) asNumber asASLiteral
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
peek
	peek ifNotNil: [ ^ peek ].
	^ peek := self token
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
scanCode: aStringOrStream
	aStream := aStringOrStream readStream.

! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
string
	aStream next.
	^ (String streamContents: [: s | | char |
			[
				char := aStream next.
				char ~= $' or: [
					aStream peek = $' and: [aStream next.true]].
			] whileTrue: [ s << char ]
		]) asASString
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
symbol
	| char |
	aStream next.
	char := aStream peek.
	char isLetter ifTrue: [ ^ self identifierString asASSymbol ].
	char = $( ifTrue: [ aStream next. ^ '#(' asASSyntax ].
	char = $' ifTrue: [ ^ self string value asASSymbol].
	char isDigit ifTrue: [ ^ self number ].
^ self error: 'invalid symbol'
! !

!ASScanner methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:45:00'!
token

	| char |
	[ aStream atEnd ifTrue: [ ^ ASEnd new ].
		aStream peek isSeparator ] whileTrue: [ aStream next ].
	char := aStream peek.
	('^.[]{}();' includes: char) ifTrue: [ ^ aStream next asASSyntax ].
	char isLetter ifTrue: [ ^ self identifier ].
	char isDigit ifTrue: [ ^ self number ].
	char = $" ifTrue: [ ^ self comment ].
	char = $# ifTrue: [ ^ self symbol ].
	char = $' ifTrue: [ ^ self string ].
	char = $: ifTrue: [
		aStream next.
		('=>' includes: aStream peek) ifTrue: [
			^ (':',aStream next asString) asASSyntax
		] ifFalse: [
			^ $: asASSyntax
	]].
	char isSpecial ifTrue: [ ^ self binaryIdentifier ].
	^ self error: 'Illegal character:',char asString
! !

!ASScanner methodsFor: 'conversion' stamp: 'KenD 11/29/2022 15:45:00'!
asArray
	^ Array streamContents: [: s |
		[ self atEnd ] whileFalse: [
			s << self next
		]
	]
! !

!ASScanner methodsFor: 'conversion' stamp: 'KenD 11/29/2022 15:45:00'!
atEnd
	^ self peek atEnd
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
symbolRef: aSymbol
	^ '_symbol.',((Symbols includes: aSymbol) ifTrue: [ aSymbol ] ifFalse: [ 'foo' ])asZigName
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visit: anASTNode
	^ anASTNode acceptVisitor: self
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitAll: aCollection
	aCollection  do: [ :node | self visit: node ]
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitLiteral: anASLiteral
	anASLiteral literal printOn: stream
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitMethodNode: anASMethodNode

	stream << 'fn ' << anASMethodNode selector asZigName
	<< '(thread : *Thread, self: Object) MethodReturns {'.
	self visitAll: anASMethodNode body.
	stream << '}'
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitReturn: anASReturn
	self visit: anASReturn expression.
	self flag: #todo.
	stream << 'return MethodReturns.Normal'
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitSelfNode: anASSelf
	stream << 'thread.push(thread.stack()[0])'
! !

!ASZigGenerator methodsFor: 'visiting' stamp: 'KenD 11/29/2022 15:16:40'!
visitSend: anASSend
	self visit: anASSend target.
	self visitAll: anASSend args.
	stream << 'call(&thread,thread.stack()[0],'<< (self symbolRef: anASSend selector) <<');'
! !

!ASZigGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:16:40'!
compiler: anASPharoCompiler
	compiler := anASPharoCompiler
! !

!ASZigGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:16:40'!
stream: aWriteStream
	stream := aWriteStream
! !

!ASZigGenerator class methodsFor: 'class initialization' stamp: 'KenD 11/29/2022 15:16:40'!
initialize
	Symbols := Set withAll: #(valueWithArguments: cull: cull:cull: cull:cull:cull: cull:cull:cull:cull: value value: value:value: value:value:value: value:value:value:value: self Object BlockClosure False True UndefinedObject SmallInteger Symbol Character Float Array String Class Metaclass Behavior Method Magnitude Number System Return Send Literal Load Store SymbolTable Dispatch yourself == ~~ ~= = + - * size ClassTable)
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
cr
	^ stream cr
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
nextPut: aCharacter
	^ stream nextPut: aCharacter
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
nextPutAll: aString
	^ stream nextPutAll: aString
! !

!ASTThreadFormat methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:44'!
printTempOffset: aSymbol
	stream nextPutAll: (method tempMap at: aSymbol) asString
! !

!ASTThreadFormat methodsFor: 'tests' stamp: 'KenD 11/29/2022 15:15:44'!
loop

	| x |
	x := 1000000000.
	[ (x := x - 1) > 0 ] whileTrue: [ 
		x even
			ifTrue: [ x * 2 + 3 ]
			ifFalse: [ x * 3 + 1 ] ]
! !

!ASTThreadFormat methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:44'!
temporaryNames
	| x |
	x := 42.
	^ x<0 ifTrue: [ 0 ] ifFalse: [ x ]
! !

!ASTThreadFormat methodsFor: 'printing/formatting' stamp: 'KenD 11/29/2022 15:15:44'!
ir: anIrMethod

	| prevBranchLabel |
	stream := WriteStream with: ''.
	method := anIrMethod asAST.
	method primitive ifNotNil: [ :primitive | 
		stream
			nextPutAll: '&p.p';
			nextPutAll: primitive asString;
			nextPutAll: ',Code.int(-1),';
			cr ].
	method needsContext ifTrue: [ 
		stream
			nextPutAll: '&p.pushContext,"^",';
			cr ].
	prevBranchLabel := nil.
	method allSequencesDo: [ :irSequence | 
		prevBranchLabel == irSequence ifFalse: [ 
			prevBranchLabel threadFormatOn: stream.
			stream cr ].
		stream
			nextPutAll: '"label';
			nextPutAll: irSequence orderNumber asString;
			nextPutAll: ':",';
			cr.
		irSequence sequence do: [ :irInstruction | 
			prevBranchLabel := irInstruction threadFormatOn: self.
			stream cr ] ].
	prevBranchLabel threadFormatOn: stream.
	^ String streamContents: [ :s | 
		  s
			  nextPutAll: 'const prog = compileTuple(sym.';
			  nextPutAll: method selector;
			  nextPut: $,;
			  nextPutAll: method numArgs asString;
			  nextPut: $,;
			  nextPutAll: method tempMap size asString;
			  nextPutAll: ',.{';
			  cr;
			  nextPutAll: stream contents;
			  cr;
			  nextPutAll: '};';
			  cr ]
! !

!ASToken methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:57'!
symbol
	^ value asSymbol
! !

!ASToken methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:57'!
value
	^ value
! !

!ASToken methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:15:57'!
value: aString
	value := aString.

! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
classSelector: anASCompiler args: aCollection selector: selector
	^ selector asSymbol
! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
defs: anASCompiler scope: anASMethodNode

! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
expectEnd
	self error: 'Unexpected token: ',self asString
! !

!ASToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:15:57'!
processKeyword: anASCompiler target: anASLiteral
	^ nil
! !

!ASToken methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:15:57'!
atEnd
	^ false
! !

!ASToken methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:15:57'!
isLiteral
	^ false
! !

!ASToken methodsFor: 'comparing' stamp: 'KenD 11/29/2022 15:15:57'!
= other
	^ self class = other class and: [value = other value]
! !

!ASToken methodsFor: 'printing' stamp: 'KenD 11/29/2022 15:15:57'!
printOn: s
	s << $< << value asString << $>

! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
assignExpression: anASCompiler
	^ self keywordExpression: anASCompiler
! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
binaryExpression: anASCompiler

	anASCompiler nextToken.
	^ anASCompiler peek
		  binaryExpression: anASCompiler
		  target: (self parseWith: anASCompiler)
! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
keywordExpression: anASCompiler

	anASCompiler nextToken.
	^ anASCompiler peek
		  keywordExpression: anASCompiler
		  target: (self parseWith: anASCompiler)
! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
parseWith: anASCompiler

! !

!ASSimple methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:18:37'!
unaryExpression: anASCompiler

	anASCompiler nextToken.
	^ anASCompiler peek
		  unaryExpression: anASCompiler
		  target: (self parseWith: anASCompiler)
! !

!ASArrayBuildToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:41:01'!
parseWith: anASCompiler
	self shouldBeImplemented
! !

!ASBlockStartToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:43:04'!
parseWith: anASCompiler
	self shouldBeImplemented
! !

!ASIdentifier methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:25:52'!
possibleAssign: anASCompiler target: target
	self keywordExpression: anASCompiler target: target
! !

!ASIdentifier methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:25:52'!
unaryExpression: anASCompiler target: target
	^ target
! !

!ASIdentifier methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:25:52'!
value: aString
	value := aString asSymbol
! !

!ASIdentifier class methodsFor: 'scanning' stamp: 'KenD 11/29/2022 15:25:52'!
with: aString
	| specials alphas colons last size |
	specials := alphas := colons := size :=0.
	last := $..
	aString do: [ : c |
		c isSpecial ifTrue: [ specials := specials + 1 ].
		(c isLetter or: [ c=$_ or: [c isDigit and: [alphas > 0]]]) ifTrue: [ alphas := alphas + 1 ].
		last := c.
		size := size + 1
	].
	specials = size ifTrue: [ ^ ASBinaryId new value: aString asSymbol ].
	alphas = size ifTrue: [ ^ ASUnaryId new value: aString asSymbol ].
	(last = $: and: [ alphas + 1 = size ]) ifTrue: [ ^ ASKeywordId new value: aString asSymbol ].
	^ ASImproperId new value: aString
! !

!ASBinaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:42:05'!
binaryExpression: anASCompiler target: target

	| arg |
	anASCompiler nextToken. " consume the selector "
	arg := anASCompiler peek unaryExpression: anASCompiler.
	^ anASCompiler peek
		  binaryExpression: anASCompiler
		  target: (ASSend new target: target; selector: value args: { arg })
! !

!ASBinaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:42:05'!
classSelector: anASCompiler args: args
	anASCompiler nextToken.
	args add: (anASCompiler peek parameterFrom: anASCompiler).
	^ value
! !

!ASBinaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:42:05'!
keywordExpression: anASCompiler target: target

	| arg |
	anASCompiler nextToken. " consume the selector "
	arg := anASCompiler peek unaryExpression: anASCompiler.
	^ anASCompiler peek
		  keywordExpression: anASCompiler
		  target: (ASSend new target: target; selector: value args: { arg })
! !

!ASBinaryId methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:42:05'!
arity
	^ 2
! !

!ASBarToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:42:20'!
addScope: anASCompiler scope: scope
	anASCompiler nextToken.

! !

!ASBarToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:42:20'!
defs: anASCompiler scope: scope
	anASCompiler nextToken.
	anASCompiler peek addScope: anASCompiler scope: scope.

! !

!ASImproperId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:35:44'!
assignExpression: anASCompiler
	^ self error: 'Invalid identifier: ',value
! !

!ASImproperId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:35:44'!
binaryExpression: anASCompiler
	^ self error: 'Invalid identifier: ',value
! !

!ASImproperId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:35:44'!
keywordExpression: anASCompiler
	^ self error: 'Invalid identifier: ',value
! !

!ASImproperId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:35:44'!
parseWith: anASCompiler
	^ self error: 'Invalid identifier: ',value
! !

!ASImproperId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:35:44'!
unaryExpression: anASCompiler
	^ self error: 'Invalid identifier: ',value
! !

!ASKeywordId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:36:40'!
classSelector: anASCompiler args: args
	anASCompiler nextToken.
	args add: (anASCompiler peek parameterFrom: anASCompiler).
	^ anASCompiler peek classSelector: anASCompiler args: args selector: self value
! !

!ASKeywordId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:36:40'!
classSelector: anASCompiler args: args selector: selector
	anASCompiler nextToken.
	args add: (anASCompiler peek parameterFrom: anASCompiler).
	^ anASCompiler peek classSelector: anASCompiler args: args selector: selector,self value
! !

!ASKeywordId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:36:40'!
keywordExpression: anASCompiler target: target
	^ self keywordExpression: anASCompiler target: target selector: '' args: OrderedCollection new
! !

!ASKeywordId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:36:40'!
keywordExpression: anASCompiler target: target selector: selector args: args
	anASCompiler nextToken.
	args add: (anASCompiler peek binaryExpression: anASCompiler).
	^ anASCompiler peek keywordExpression: anASCompiler target: target selector: selector,value args: args
! !

!ASKeywordId methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:36:40'!
arity
	^ 2
! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
addScope: anASCompiler scope: scope
	anASCompiler nextToken.
	scope add: value.
	anASCompiler peek addScope: anASCompiler scope: scope.

! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
assignExpression: anASCompiler
	anASCompiler nextToken.
	^ anASCompiler peek possibleAssign: anASCompiler target: self
! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
binaryExpression: anASCompiler target: target

	anASCompiler nextToken. " consume the selector "
	^ anASCompiler peek
		  binaryExpression: anASCompiler
		  target: (ASSend new target: target; selector: value args: #(  ))
! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
classSelector: anASCompiler args: aCollection
	^ anASCompiler nextToken value asSymbol
! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
keywordExpression: anASCompiler target: target

	anASCompiler nextToken. " consume the selector "
	^ anASCompiler peek
		  keywordExpression: anASCompiler
		  target: (ASSend new target: target; selector: value args: #(  ))
! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
parameterFrom: anASCompiler
	anASCompiler nextToken.
	^ value
! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
statement: anASCompiler
	^ self assignExpression: anASCompiler 

! !

!ASUnaryId methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:50:48'!
unaryExpression: anASCompiler target: target

	anASCompiler nextToken. " consume the selector "
	^ anASCompiler peek
		  unaryExpression: anASCompiler
		  target:
		  (ASSend new target: target; selector: self symbol args: #(  ))
! !

!ASUnaryId methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:50:48'!
arity
	^ 1
! !

!ASLiteralListToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:37:06'!
parseWith: anASCompiler
	self shouldBeImplemented
! !

!ASSpecial methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:22:31'!
isSpecial
	^ true
! !

!ASString methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:19:45'!
arity
	| last |
	last := value last.
	last tokenish ifFalse: [ ^ 2 ].
	(value includes: $:) ifFalse: [ ^ 1 ].
	last = $: ifFalse: [ ^ 0 ].
	^ 1+(value count: [: c | c=$:])
! !

!ASOpenParenToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:37:53'!
parseWith: anASCompiler
	| result |
	anASCompiler nextToken. " discard ("
	result := anASCompiler peek assignExpression: anASCompiler.
	anASCompiler peek expectCloseParen.
	^ result
! !

!ASSyntax class methodsFor: 'class initialization' stamp: 'KenD 11/29/2022 15:17:42'!
initialize
	classMap := {
			$^ -> ASReturnToken .
			$: -> ASColonToken .
			$. -> ASSeparatorToken .
			$[ -> ASBlockStartToken .
			$] -> ASBlockEndToken .
			${ -> ASArrayBuildToken .
			$} -> ASArrayEndToken .
			$( -> ASOpenParenToken .
			$) -> ASCloseParenToken .
			'#(' -> ASLiteralListToken .
			$| -> ASBarToken .
			'|' -> ASBarToken .
			$; -> ASCascadeToken .
			':=' -> ASAssignmentToken .
			':>' -> ASParrotToken .
		} asDictionary
! !

!ASSyntax class methodsFor: 'instance creation' stamp: 'KenD 11/29/2022 15:17:42'!
with: aCharacterOrString
	^ (classMap at: aCharacterOrString ifAbsent: [^ self error: 'invalid character sequence: ',aCharacterOrString ]) new value: aCharacterOrString
! !

!ASAssignmentToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:41:48'!
possibleAssign: anASCompiler target: target

	anASCompiler nextToken.
	^ ASAssign new
		  variable: target
		  expression: (anASCompiler peek assignExpression: anASCompiler)
! !

!ASClosers methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:48'!
binaryExpression: anASCompiler target: target
	^ target
! !

!ASClosers methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:48'!
keywordExpression: anASCompiler target: target
	^ target
! !

!ASClosers methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:48'!
keywordExpression: anASCompiler target: target selector: selector args: args

	^ ASSend new target: target; selector: selector args: args
! !

!ASClosers methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:48'!
nonStatements: anASCompiler

! !

!ASClosers methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:48'!
possibleAssign: anASCompiler target: target
	^ target
! !

!ASClosers methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:33:48'!
unaryExpression: anASCompiler target: target
	^ target
! !

!ASEnd methodsFor: 'testing' stamp: 'KenD 11/29/2022 15:34:58'!
atEnd
	^ true
! !

!ASEnd methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:34:58'!
expectEnd
! !

!ASEnd methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:34:58'!
statement: anASCompiler
	^ nil
! !

!ASSeparatorToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:58'!
nonStatements: anASCompiler
	anASCompiler nextToken. " consume the . "
	anASCompiler peek nonStatements: anASCompiler
! !

!ASSeparatorToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:39:58'!
statement: anASCompiler
	anASCompiler nextToken. " consume the . "
	^ anASCompiler peek statement: anASCompiler
! !

!ASReturnToken methodsFor: 'parsing' stamp: 'KenD 11/29/2022 15:23:37'!
statement: anASCompiler
	anASCompiler nextToken. " consume the ^ "
	^ ASReturn new expression: (anASCompiler peek assignExpression: anASCompiler)

! !

!ASTBlock methodsFor: 'initializing' stamp: 'KenD 11/29/2022 15:17:28'!
from: anIRSequence
	blockNumber := anIRSequence orderNumber.
	sequence := anIRSequence sequence collect: [: node| node asAST ]
! !

!ASTIrMethod methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:47:14'!
addSequence: anIRSequence
	self addSequence: anIRSequence offset: 0
! !

!ASTIrMethod methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:47:14'!
addSequence: anIRSequence offset: offset
	[ anIRSequence orderNumber + offset > blocks size] whileTrue: [blocks add: nil].
	(blocks at: anIRSequence orderNumber) ifNil: [ blocks at: anIRSequence orderNumber put: anIRSequence asAST ]
! !

!ASTIrMethod methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:47:14'!
from: aCompiledMethod
	| seq |
	aCompiledMethod  compiledMethod primitive = 0 ifFalse: [ primitive := aCompiledMethod  compiledMethod primitive ].
	selector := aCompiledMethod sourceNode selector.
	numArgs := aCompiledMethod numArgs.
	tempMap := aCompiledMethod ir tempMap.
	seq := aCompiledMethod ir startSequence.
	startBlockNumber := seq orderNumber.
	blocks := OrderedCollection new.
	seq withAllSuccessorsDo: [ : irSequence |
		self addSequence: irSequence ]
! !

!ASTJump methodsFor: 'initializing' stamp: 'KenD 11/29/2022 15:47:27'!
from: anIRJump
	destination := anIRJump destination
! !

!ASTJump methodsFor: 'thread' stamp: 'KenD 11/29/2022 15:47:27'!
threadFormatOn: threadPrinter

	threadPrinter nextPutAll: '&p.branch,'.
	destination threadFormatOn: threadPrinter.
	^ self otherwise
! !

!ASTJumpFalse methodsFor: 'thread' stamp: 'KenD 11/29/2022 15:48:04'!
threadFormatOn: threadPrinter

	threadPrinter nextPutAll: '&p.ifFalse,'.
	destination threadFormatOn: threadPrinter.
	^ self otherwise
! !

!ASTJumpTrue methodsFor: 'thread' stamp: 'KenD 11/29/2022 15:48:14'!
threadFormatOn: threadPrinter

	threadPrinter nextPutAll: '&p.ifTrue,'.
	destination threadFormatOn: threadPrinter.
	^ self otherwise
! !

!ASTPop methodsFor: 'initializing' stamp: 'KenD 11/29/2022 15:48:29'!
from: anIRPop
! !

!ASTPushLiteral methodsFor: 'initializing' stamp: 'KenD 11/29/2022 15:49:44'!
from: anIRPushLiteral
	literal := anIRPushLiteral literal
! !

!ASTTemps methodsFor: 'initializing' stamp: 'KenD 11/29/2022 15:49:13'!
from: anIRTemps

	name := anIRTemps name
! !

!ASTPopIntoTemp methodsFor: 'thread' stamp: 'KenD 11/29/2022 15:48:44'!
threadFormatOn: threadPrinter

	threadPrinter nextPutAll: '&p.popIntoTemp,'.
	threadPrinter printTempOffset: self name.
	^ nil
! !

!ASTPushTemp methodsFor: 'thread' stamp: 'KenD 11/29/2022 15:50:03'!
threadFormatOn: threadPrinter

	threadPrinter nextPutAll: '&p.pushTemp,'.
	threadPrinter printTempOffset: self name.
	^ nil
! !

!ASTStoreTemp methodsFor: 'thread' stamp: 'KenD 11/29/2022 15:50:15'!
threadFormatOn: threadPrinter

	threadPrinter nextPutAll: '&p.storeTemp,'.
	threadPrinter printTempOffset: self name.
	^ nil
! !

!ASGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:25:23'!
address
	^ address
! !

!ASGenerator methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:25:23'!
address: anInteger extra: anInteger3 header: anObject fields: anObject1
	address := anInteger.
	extra := anInteger3.
	header := anObject.
	fields := anObject1.
	^ 1 + (extra ifNil: [ 0 ] ifNotNil: [ 1 ]) + fields size
! !

!ASGenerator methodsFor: 'process' stamp: 'KenD 11/29/2022 15:25:23'!
processOn: anASImage
	fields do: [: value |
		value astObject: anASImage
	]
! !

!ASGenerator methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:25:23'!
writeFieldsOn: anASImage
	header writeRawOn: anASImage.
	extra ifNotNil: [ extra writeRawOn: anASImage ].
	fields do: [: value |
		(value astImageObject: anASImage) writeRawOn: anASImage
	].

! !

!ASGenerator methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:25:23'!
on: anASImage object: anObject
	anASImage include: self object: anObject
! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:26:13'!
addFirstMethod: selector in: canonicalClasses
	canonicalClasses do: [: class |
		class methodDict at: selector ifPresent: [: method | self method: method. ^ self ]
	]

! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:26:13'!
closeOverClassesAndSelectors
	| tempClasses tempSelectors |
	[ newClasses size + newSelectors size > 0 ] whileTrue: [
		tempClasses := newClasses.
		newClasses := OrderedCollection new.
		tempSelectors := newSelectors.
		newSelectors := OrderedCollection new.
		tempClasses do: [: class | | cc |
			cc := self canonicalClasses: class.
			cc first superclass ifNotNil: [: superclass | self imageObject: superclass ].
			self imageObject: cc first.
			selectors do: [: selector |
				self addFirstMethod: selector in: cc.
			]
		].
		tempSelectors do: [: selector |
			classes keysDo: [: class |
				self addFirstMethod: selector in: (self canonicalClasses: class).
			]
		]
	]
! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:26:13'!
createClassTable
	| table |
	table := Array new: classes size.
	classes keysAndValuesDo: [: class : number |
		table at: number+1 put: (self imageObject: class) ].
	^ table
! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:26:13'!
nextPutAll: aByteArray
	^ aStream nextPutAll: aByteArray.
! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:26:13'!
writeHeap
	self offset / 8 writeRawOn: aStream.
	output do: [: gen | gen writeFieldsOn: self ].


! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:58:10'!
writeImageOn: aWriteStream
	self flag: #FixMe.
	self shouldBeImplemented.
	"| table |
	aStream := aWriteStream.
	16r6567616d69545341 writeRawOn: aStream.
	self closeOverClassesAndSelectors.
	table := self createClassTable.
	self writeHeap.
	table writeRawOn: aStream.
	self writeSymbolTable."! !

!ASImage methodsFor: 'writing' stamp: 'KenD 11/29/2022 15:26:13'!
writeSymbolTable
	| table |
	symbols size writeRawOn: aStream.
	table := Array new: symbols size.
	symbols keysAndValuesDo: [: key : value |
		table at: value put: key ].
	table do: [: string | string writeWithCountOn: aStream ].

! !

!ASImage methodsFor: 'initialization' stamp: 'KenD 11/29/2022 15:26:13'!
initialize
	super initialize.
	baseAddress := BaseAddress.
	currentAddress := baseAddress + 16.
	objects := IdentityDictionary new.
	process := OrderedCollection new.
	output := OrderedCollection new.
	symbols := Dictionary new.
	classes := Dictionary new.
	methods := Dictionary new.
	selectors := Set new.
	newClasses := OrderedCollection new.
	newSelectors := OrderedCollection new.
	#(valueWithArguments: cull: cull:cull: cull:cull:cull: cull:cull:cull:cull: " need to be first 5 symbols so that short-circuit on dispatch works "
		value value: value:value: value:value:value: value:value:value:value: " need to be the next 5 symbols "
		yourself == ~~ ~= = + - * size
		) do: [: symbol |
			self symbol: symbol ].
	{Object . BlockClosure . False . True .
		UndefinedObject . SmallInteger . Symbol . Character .
		Float . " all of those above must be in this order because they are the immediate/literal classes "
		ASTSystem
		} do: [: class |
			self class: class ].
	#(start) do: [: selector |
			self selector: selector ].
! !

!ASImage methodsFor: 'process' stamp: 'KenD 11/29/2022 15:26:13'!
processOut
	| gen |
	[ process notEmpty ] whileTrue: [
		gen := process removeFirst.
		output add: gen.
		gen 
	]
! !

!ASImage methodsFor: 'objects' stamp: 'KenD 11/29/2022 15:26:13'!
generalObject: anObject
	| gen |
	^ objects at: anObject ifAbsentPut: [
				gen := ASGenerator new on: self object: anObject.
				process add: gen.
				self processOut.
				gen
			]
! !

!ASImage methodsFor: 'objects' stamp: 'KenD 11/29/2022 15:26:13'!
imageObject: anObject
	^ anObject astImageObject: self
! !

!ASImage methodsFor: 'objects' stamp: 'KenD 11/29/2022 15:26:13'!
object: aObject fields: nFields elements: nElements
	self shouldBeImplemented 
! !

!ASImage methodsFor: 'compiling' stamp: 'KenD 11/29/2022 15:26:13'!
compileMethod: aMethod
	self halt
! !

!ASImage methodsFor: 'adding' stamp: 'KenD 11/29/2022 15:26:13'!
class: aClass
	| cc |
	cc := (self canonicalClasses: aClass) first.
	^ classes at: cc ifAbsentPut: [ newClasses add: cc. classes size ].

! !

!ASImage methodsFor: 'adding' stamp: 'KenD 11/29/2022 15:26:13'!
header: header
	| code key value |
	code := 0.
	header do: [: flag |
		flag isAssociation ifTrue: [
			key := flag key.
			value := flag value.
			key = #class ifTrue: [ code := code bitOr: ((self class: value) bitAnd: ClassMask) . key := nil ].
			key = #hash ifTrue: [ code := code bitOr: (value bitAnd: HashMask) << HashShift . key := nil ].
			key = #size ifTrue: [ code := code bitOr: (value bitAnd: SizeMask) << SizeShift . key := nil ].
			key = #format ifTrue: [ code := code bitOr: (value bitAnd: FormatMask) << FormatShift . key := nil ].
		] ifFalse: [
			key := flag.
			key = #isImmutable ifTrue: [ code := code bitOr: 1 << 47 . key := nil ].
			key = #isForwarded ifTrue: [ code := code bitOr: 1 << 63 . key := nil ].
		].
		key ifNotNil: [ self error: 'header field "',key asString,'" is illegal' ]
	].
	^ code
! !

!ASImage methodsFor: 'adding' stamp: 'KenD 11/29/2022 15:26:13'!
include: anASGenerator object: anObject
	| nVars extra size header format fields |
	fields := anObject astFields.
	nVars := fields size.
	header := OrderedCollection with: #class -> anObject class.
	header add: #hash -> currentAddress.
	format := anObject astFormat.
	header add: #format -> format.
	extra := nil.
	(format & 24)>0 ifTrue: [ 
			(format & 17) = 1 ifTrue: [ 
					self error: 'indexable with instVars' ]
				ifFalse: [ 
					nVars <= SizeMask
						ifTrue: [ header add: #size -> nVars ]
						ifFalse: [
							extra := nVars.
							header add: #size -> SizeMask.
							self error: 'oversize array' ] ]
				  ]
		ifFalse: [ header add: #size -> nVars ].
	size := anASGenerator
		address: currentAddress
		extra: extra
		header: (self header: header)
		fields: fields.
	currentAddress := currentAddress + (size * 8)
! !

!ASImage methodsFor: 'adding' stamp: 'KenD 11/29/2022 15:26:13'!
literal: l class: c
	^ 16r7FF8000000000000 + (l bitShift: 3) + c
! !

!ASImage methodsFor: 'adding' stamp: 'KenD 11/29/2022 15:26:13'!
selector: aSymbol
	^ selectors addIfNotPresent: aSymbol andDo:  [ newSelectors add: aSymbol ].

! !

!ASImage methodsFor: 'adding' stamp: 'KenD 11/29/2022 15:26:13'!
symbol: aString
	aString isSymbol ifFalse: [ ^ self symbol: aString asSymbol ].
	^ self literal: (symbols at: aString ifAbsentPut: [ symbols size + 1])+(aString numArgs <<25) class: 6
! !

!ASImage methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:26:13'!
canonicalClasses: aClass
	| name side |
	side := aClass isInstanceSide ifTrue: [ #instanceSide ] ifFalse: [ #classSide ].
	name := aClass instanceSide name.
	^ ((name beginsWith: 'AST') ifTrue: [
			Smalltalk at: (name allButFirst: 3) ifPresent: [: c | { aClass . c } ] ifAbsent: [ { aClass } ]
		] ifFalse: [
			Smalltalk at: ('AST',name) asSymbol ifPresent: [: c | { c . aClass } ] ifAbsent: [ { aClass } ]
		]) collect: side
! !

!ASImage methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:26:13'!
method: aCompiledMethod
	^ methods at: aCompiledMethod ifAbsentPut: [ self compileMethod: aCompiledMethod ]
! !

!ASImage methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:26:13'!
methods
	^ methods
! !

!ASImage methodsFor: 'accessing' stamp: 'KenD 11/29/2022 15:26:13'!
offset
	^ currentAddress - baseAddress
! !

!ASImage class methodsFor: 'export' stamp: 'KenD 11/29/2022 15:26:13'!
exportMethods
	^ self exportPackages flatCollect: [ :package |
			package methods
		]
! !

!ASImage class methodsFor: 'export' stamp: 'KenD 11/29/2022 15:26:13'!
exportPackages
	^ RPackageOrganizer default packages select: [: package |
			((package name beginsWith: 'ASTSmalltalk')
					or: ((package name beginsWith: 'PC') 
								and: [(package name findString: '-Option') = 0]))
				and: [ (package name endsWith: '-Tests') not ]
		]
! !

!ASImage class methodsFor: 'class initialization' stamp: 'KenD 11/29/2022 15:53:53'!
initialize
	BaseAddress := 16r1000000000.
	SizeMask := 16r7FFF.
	SizeShift := 48.
	FormatMask := 16r1F.
	FormatShift := 40.
	HashShift := 20.
	HashMask := (1<<(FormatShift-HashShift))-1.
	ClassMask :=  (1<<HashShift)-1.


! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASIdentifier
	(#('true' 'false' 'nil' 'thisContext') includes: self) ifTrue: [ ^ self asASSpecial ].
	(#('self' 'super') includes: self) ifTrue: [ ^ self asASSelf ].
	'|' = self ifTrue: [ ^ self asASSyntax ].
	^ ASIdentifier with: self asString
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASLiteral
	^ ASLiteralToken new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSelf
	^ ASSelfToken new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSpecial
	^ ASSpecial new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASString
	^ ASString new value: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSymbol
	^ ASSymbol new value: self asSymbol
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
asASSyntax
	^ ASSyntax with: self
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astFields
	| nVars fields |
	nVars := self class instSize.
	fields := Array new: nVars.
	1 to: nVars do: [ :i | fields at: i put: (self instVarAt: i) ].

! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astFormat
	^ 1
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astImageObject: anASImage
	^ anASImage literal: (anASImage generalObject: self) address >> 3 class: 0
! !

!Object methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:06:00'!
astObject: anASImage
	^ anASImage generalObject: self
! !

!Boolean methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:35'!
astImageObject: anASImage
	^ anASImage literal: self asBit*2+3 class: 2+self asBit
! !

!Boolean methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:35'!
astObject: anASImage
	^ self
! !

!Float methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:14:24'!
astImageObject: anASImage
	^ ('16r',self hex) asNumber
! !

!Float methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:14:24'!
astObject: anASImage
	^ self
! !

!Integer methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:11'!
writeRaw16On: aWriteStream
	aWriteStream nextPutAll: ((16r10000 + self) asByteArray reversed first: 2)
! !

!Integer methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:11'!
writeRaw32On: aWriteStream
	aWriteStream nextPutAll: ((16r100000000 + self) asByteArray reversed first: 4)
! !

!Integer methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:11'!
writeRawOn: aWriteStream
	aWriteStream nextPutAll: ((16r10000000000000000 + self) asByteArray reversed first: 8)
! !

!SmallInteger methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:08:47'!
astImageObject: anASImage
	^ anASImage literal: self class: 5
! !

!SmallInteger methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:08:47'!
astObject: anASImage
	^ self
! !

!UndefinedObject methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:19'!
astImageObject: anASImage
	^ anASImage literal: 7 class: 4
! !

!UndefinedObject methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:19'!
astObject: anASImage
	^ self
! !

!UndefinedObject methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:19'!
threadFormatOn: threadPrinter

	
! !

!Behavior methodsFor: '*ASTSmalltalk-Tests' stamp: 'KenD 11/29/2022 15:12:09'!
<= aClass
	^ self name <= aClass name
! !

!Class methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:36'!
astFields
	^ { name asSymbol . methodDict values . superclass . Array new . 1 . classPool keys . sharedPools }
! !

!Metaclass methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:43'!
astFields
	^ { thisClass . methodDict values . superclass }
! !

!Character methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:11:03'!
astImageObject: anASImage
	^ anASImage literal: self asInteger class: 7
! !

!Character methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:11:03'!
astObject: anASImage
	^ self
! !

!String methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:09:07'!
asZigName
	(self allSatisfy: #isAlphaNumeric) ifTrue: [ ^ self asString ].
	^ '@"',self,'"' 
! !

!ByteString methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:48'!
writeRawOn: aWriteStream
	aWriteStream nextPutAll: self asByteArray.

! !

!ArrayedCollection methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:10'!
astFields
	^ self
! !

!ArrayedCollection methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:10'!
astFormat
	^ self subclassResponsibility
! !

!Array methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:13:24'!
astFormat
	^ 8
! !

!Array methodsFor: '*ASTSmalltalk-Tests' stamp: 'KenD 11/29/2022 15:11:29'!
doP1
	Smalltalk garbageCollect.
	^ (([ self do: [: arg | arg p1 ] ] timeToRun asNanoSeconds * 100) + (self size//2)) // self size
! !

!ByteArray methodsFor: '*ASTSmalltalk-Tests' stamp: 'KenD 11/29/2022 15:12:28'!
at64: anInteger
	| result |
	result := 0.
	8 to: 1 by: -1 do: [: i |
		result := (result << 8)+(self at: anInteger + i)
	].
	^ result
! !

!CompiledMethod methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:47'!
asAST
	^ ASTIrMethod new from: self
! !

!CompiledMethod methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:47'!
astFields
	self halt.
	^ {  }
! !

!CompiledMethod methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:10:47'!
inspectionThread

	<inspectorPresentationOrder: 50 title: 'Thread'>
	^ self ir inspectionThread
! !

!Set methodsFor: '*ASTSmalltalk' stamp: 'KenD 11/29/2022 15:08:18'!
addIfNotPresent: anObject andDo: aBlock
	"Include anObject as one of the receiver's elements and then value aBlock, but only if there
	is no such element already. Anwser anObject."

	| index |
	index := self scanFor: anObject.
	(array at: index) 
		ifNil: [self atNewIndex: index put: anObject asCollectionElement. aBlock value ].
	^ anObject

! !
ASCompiler initialize!
ASZigGenerator initialize!
ASSyntax initialize!
ASImage initialize!
