class SingleLineComments {
  // This is SingleLineComment
  const SingleLineComments();
}

class MultiLineComments {
  /*
    * This is MultiLineComments using 
    * /* */
  */
  const MultiLineComments();
}

class DocumentationComments {
  /// Documentation comments are multi-line or single-line comments that begin with /// or /**.
  ///
  /// Using /// on consecutive lines has the same effect as a multi-line doc comment.
  ///
  /// Using brackets, you can refer to classes, methods, fields, top-level variables, functions, and parameters. 
  /// The names in brackets are resolved in the lexical scope of the documented program element.
  /// 
  /// Example 1 : to refer fields [message] 
  /// 
  /// Example 2 : to refer Class [DocumentationComments]
  /// 
  /// Example 3 : to refer String Class [String]

  const DocumentationComments(this.message);

  final String? message;
}

void main(List<String> args) {
  DocumentationComments(null);
}
