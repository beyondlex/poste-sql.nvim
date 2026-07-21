; Highlight directive comments (-- @connection, -- @database, -- @protocol)
; as Special instead of Comment, to visually distinguish them from regular comments.
(
  (comment) @SqlDirectiveComment
  (#match? @SqlDirectiveComment "^--%s*@(connection|database|protocol)")
)