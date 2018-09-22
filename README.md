# EVERBLOCKING-STREAM

```
(make-instance 'everblocking-stream:everblocking-stream)
```

The created stream returns `NIL` on calls to `CL:LISTEN`, `CL:READ-CHAR-NO-HANG`
and `CL:CLEAR-INPUT`, and blocks on `CL:READ-CHAR`, `CL:READ-LINE` and
`CL:PEEK-CHAR`.

Usage: mocking streams belonging to inactive network sockets for testing
purposes.

## License

Public domain.
