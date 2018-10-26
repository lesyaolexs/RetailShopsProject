var codec = new window.coreapi.codecs.CoreJSONCodec()
var coreJSON = window.atob('eyJfdHlwZSI6ImRvY3VtZW50IiwiX21ldGEiOnsidXJsIjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2RvY3Mvc2NoZW1hLmpzIiwidGl0bGUiOiJSZXRhaWwgU2hvcHMgUHJvamVjdCBBUEkifSwiaXRlbXMiOnsibGlzdCI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvaXRlbXMvIiwiYWN0aW9uIjoiZ2V0In0sImNyZWF0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvaXRlbXMvIiwiYWN0aW9uIjoicG9zdCIsImVuY29kaW5nIjoiYXBwbGljYXRpb24vanNvbiIsImZpZWxkcyI6W3sibmFtZSI6Im5hbWUiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJOYW1lIiwiX3R5cGUiOiJzdHJpbmcifX1dfSwicmVhZCI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvaXRlbXMve2lkfS8iLCJhY3Rpb24iOiJnZXQiLCJmaWVsZHMiOlt7Im5hbWUiOiJpZCIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6InBhdGgiLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiJBIHVuaXF1ZSBpbnRlZ2VyIHZhbHVlIGlkZW50aWZ5aW5nIHRoaXMgaXRlbS4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19XX0sInVwZGF0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvaXRlbXMve2lkfS8iLCJhY3Rpb24iOiJwdXQiLCJlbmNvZGluZyI6ImFwcGxpY2F0aW9uL2pzb24iLCJmaWVsZHMiOlt7Im5hbWUiOiJpZCIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6InBhdGgiLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiJBIHVuaXF1ZSBpbnRlZ2VyIHZhbHVlIGlkZW50aWZ5aW5nIHRoaXMgaXRlbS4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19LHsibmFtZSI6Im5hbWUiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJOYW1lIiwiX3R5cGUiOiJzdHJpbmcifX1dfSwicGFydGlhbF91cGRhdGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL2l0ZW1zL3tpZH0vIiwiYWN0aW9uIjoicGF0Y2giLCJlbmNvZGluZyI6ImFwcGxpY2F0aW9uL2pzb24iLCJmaWVsZHMiOlt7Im5hbWUiOiJpZCIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6InBhdGgiLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiJBIHVuaXF1ZSBpbnRlZ2VyIHZhbHVlIGlkZW50aWZ5aW5nIHRoaXMgaXRlbS4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19LHsibmFtZSI6Im5hbWUiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ik5hbWUiLCJfdHlwZSI6InN0cmluZyJ9fV19LCJkZWxldGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL2l0ZW1zL3tpZH0vIiwiYWN0aW9uIjoiZGVsZXRlIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIGl0ZW0uIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fV19fSwib3JkZXJpdGVtcyI6eyJsaXN0Ijp7Il90eXBlIjoibGluayIsInVybCI6Ii9vcmRlcml0ZW1zLyIsImFjdGlvbiI6ImdldCJ9LCJjcmVhdGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL29yZGVyaXRlbXMvIiwiYWN0aW9uIjoicG9zdCIsImVuY29kaW5nIjoiYXBwbGljYXRpb24vanNvbiIsImZpZWxkcyI6W3sibmFtZSI6InByaWNlIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiUHJpY2UiLCJfdHlwZSI6Im51bWJlciJ9fSx7Im5hbWUiOiJxdWFudGl0eSIsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiUXVhbnRpdHkiLCJfdHlwZSI6ImludGVnZXIifX0seyJuYW1lIjoib3JkZXIiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJPcmRlciIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJpdGVtIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiSXRlbSIsIl90eXBlIjoiaW50ZWdlciJ9fV19LCJyZWFkIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9vcmRlcml0ZW1zL3tpZH0vIiwiYWN0aW9uIjoiZ2V0IiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIG9yZGVyIGl0ZW0uIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fV19LCJ1cGRhdGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL29yZGVyaXRlbXMve2lkfS8iLCJhY3Rpb24iOiJwdXQiLCJlbmNvZGluZyI6ImFwcGxpY2F0aW9uL2pzb24iLCJmaWVsZHMiOlt7Im5hbWUiOiJpZCIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6InBhdGgiLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiJBIHVuaXF1ZSBpbnRlZ2VyIHZhbHVlIGlkZW50aWZ5aW5nIHRoaXMgb3JkZXIgaXRlbS4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19LHsibmFtZSI6InByaWNlIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiUHJpY2UiLCJfdHlwZSI6Im51bWJlciJ9fSx7Im5hbWUiOiJxdWFudGl0eSIsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiUXVhbnRpdHkiLCJfdHlwZSI6ImludGVnZXIifX0seyJuYW1lIjoib3JkZXIiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJPcmRlciIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJpdGVtIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiSXRlbSIsIl90eXBlIjoiaW50ZWdlciJ9fV19LCJwYXJ0aWFsX3VwZGF0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvb3JkZXJpdGVtcy97aWR9LyIsImFjdGlvbiI6InBhdGNoIiwiZW5jb2RpbmciOiJhcHBsaWNhdGlvbi9qc29uIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIG9yZGVyIGl0ZW0uIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJwcmljZSIsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiUHJpY2UiLCJfdHlwZSI6Im51bWJlciJ9fSx7Im5hbWUiOiJxdWFudGl0eSIsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiUXVhbnRpdHkiLCJfdHlwZSI6ImludGVnZXIifX0seyJuYW1lIjoib3JkZXIiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ik9yZGVyIiwiX3R5cGUiOiJpbnRlZ2VyIn19LHsibmFtZSI6Iml0ZW0iLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ikl0ZW0iLCJfdHlwZSI6ImludGVnZXIifX1dfSwiZGVsZXRlIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9vcmRlcml0ZW1zL3tpZH0vIiwiYWN0aW9uIjoiZGVsZXRlIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIG9yZGVyIGl0ZW0uIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fV19fSwib3JkZXJzIjp7Imxpc3QiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL29yZGVycy8iLCJhY3Rpb24iOiJnZXQifSwiY3JlYXRlIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9vcmRlcnMvIiwiYWN0aW9uIjoicG9zdCIsImVuY29kaW5nIjoiYXBwbGljYXRpb24vanNvbiIsImZpZWxkcyI6W3sibmFtZSI6ImRhdGUiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6IkRhdGUiLCJfdHlwZSI6InN0cmluZyJ9fSx7Im5hbWUiOiJzaG9wIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiU2hvcCIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJzYWxlc21hbiIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6IlNhbGVzbWFuIiwiX3R5cGUiOiJpbnRlZ2VyIn19XX0sInJlYWQiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL29yZGVycy97aWR9LyIsImFjdGlvbiI6ImdldCIsImZpZWxkcyI6W3sibmFtZSI6ImlkIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoicGF0aCIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IkEgdW5pcXVlIGludGVnZXIgdmFsdWUgaWRlbnRpZnlpbmcgdGhpcyBvcmRlci4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19XX0sInVwZGF0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvb3JkZXJzL3tpZH0vIiwiYWN0aW9uIjoicHV0IiwiZW5jb2RpbmciOiJhcHBsaWNhdGlvbi9qc29uIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIG9yZGVyLiIsInRpdGxlIjoiSUQiLCJfdHlwZSI6ImludGVnZXIifX0seyJuYW1lIjoiZGF0ZSIsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiRGF0ZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6InNob3AiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJTaG9wIiwiX3R5cGUiOiJpbnRlZ2VyIn19LHsibmFtZSI6InNhbGVzbWFuIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiU2FsZXNtYW4iLCJfdHlwZSI6ImludGVnZXIifX1dfSwicGFydGlhbF91cGRhdGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL29yZGVycy97aWR9LyIsImFjdGlvbiI6InBhdGNoIiwiZW5jb2RpbmciOiJhcHBsaWNhdGlvbi9qc29uIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIG9yZGVyLiIsInRpdGxlIjoiSUQiLCJfdHlwZSI6ImludGVnZXIifX0seyJuYW1lIjoiZGF0ZSIsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiRGF0ZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6InNob3AiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6IlNob3AiLCJfdHlwZSI6ImludGVnZXIifX0seyJuYW1lIjoic2FsZXNtYW4iLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6IlNhbGVzbWFuIiwiX3R5cGUiOiJpbnRlZ2VyIn19XX0sImRlbGV0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvb3JkZXJzL3tpZH0vIiwiYWN0aW9uIjoiZGVsZXRlIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIG9yZGVyLiIsInRpdGxlIjoiSUQiLCJfdHlwZSI6ImludGVnZXIifX1dfX0sInNhbGVzbWVuIjp7Imxpc3QiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL3NhbGVzbWVuLyIsImFjdGlvbiI6ImdldCJ9LCJjcmVhdGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL3NhbGVzbWVuLyIsImFjdGlvbiI6InBvc3QiLCJlbmNvZGluZyI6ImFwcGxpY2F0aW9uL2pzb24iLCJmaWVsZHMiOlt7Im5hbWUiOiJmaXJzdF9uYW1lIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiRmlyc3QgbmFtZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6Imxhc3RfbmFtZSIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ikxhc3QgbmFtZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6ImVtYWlsIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiRW1haWwiLCJfdHlwZSI6InN0cmluZyJ9fSx7Im5hbWUiOiJzaG9wIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiU2hvcCIsIl90eXBlIjoiaW50ZWdlciJ9fV19LCJyZWFkIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9zYWxlc21lbi97aWR9LyIsImFjdGlvbiI6ImdldCIsImZpZWxkcyI6W3sibmFtZSI6ImlkIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoicGF0aCIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IkEgdW5pcXVlIGludGVnZXIgdmFsdWUgaWRlbnRpZnlpbmcgdGhpcyBzYWxlc21hbi4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19XX0sInVwZGF0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvc2FsZXNtZW4ve2lkfS8iLCJhY3Rpb24iOiJwdXQiLCJlbmNvZGluZyI6ImFwcGxpY2F0aW9uL2pzb24iLCJmaWVsZHMiOlt7Im5hbWUiOiJpZCIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6InBhdGgiLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiJBIHVuaXF1ZSBpbnRlZ2VyIHZhbHVlIGlkZW50aWZ5aW5nIHRoaXMgc2FsZXNtYW4uIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJmaXJzdF9uYW1lIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiRmlyc3QgbmFtZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6Imxhc3RfbmFtZSIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ikxhc3QgbmFtZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6ImVtYWlsIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiRW1haWwiLCJfdHlwZSI6InN0cmluZyJ9fSx7Im5hbWUiOiJzaG9wIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiU2hvcCIsIl90eXBlIjoiaW50ZWdlciJ9fV19LCJwYXJ0aWFsX3VwZGF0ZSI6eyJfdHlwZSI6ImxpbmsiLCJ1cmwiOiIvc2FsZXNtZW4ve2lkfS8iLCJhY3Rpb24iOiJwYXRjaCIsImVuY29kaW5nIjoiYXBwbGljYXRpb24vanNvbiIsImZpZWxkcyI6W3sibmFtZSI6ImlkIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoicGF0aCIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IkEgdW5pcXVlIGludGVnZXIgdmFsdWUgaWRlbnRpZnlpbmcgdGhpcyBzYWxlc21hbi4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19LHsibmFtZSI6ImZpcnN0X25hbWUiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6IkZpcnN0IG5hbWUiLCJfdHlwZSI6InN0cmluZyJ9fSx7Im5hbWUiOiJsYXN0X25hbWUiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ikxhc3QgbmFtZSIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6ImVtYWlsIiwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJFbWFpbCIsIl90eXBlIjoic3RyaW5nIn19LHsibmFtZSI6InNob3AiLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6IlNob3AiLCJfdHlwZSI6ImludGVnZXIifX1dfSwiZGVsZXRlIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9zYWxlc21lbi97aWR9LyIsImFjdGlvbiI6ImRlbGV0ZSIsImZpZWxkcyI6W3sibmFtZSI6ImlkIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoicGF0aCIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IkEgdW5pcXVlIGludGVnZXIgdmFsdWUgaWRlbnRpZnlpbmcgdGhpcyBzYWxlc21hbi4iLCJ0aXRsZSI6IklEIiwiX3R5cGUiOiJpbnRlZ2VyIn19XX19LCJzaG9wcyI6eyJsaXN0Ijp7Il90eXBlIjoibGluayIsInVybCI6Ii9zaG9wcy8iLCJhY3Rpb24iOiJnZXQifSwiY3JlYXRlIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9zaG9wcy8iLCJhY3Rpb24iOiJwb3N0IiwiZW5jb2RpbmciOiJhcHBsaWNhdGlvbi9qc29uIiwiZmllbGRzIjpbeyJuYW1lIjoibmFtZSIsInJlcXVpcmVkIjp0cnVlLCJsb2NhdGlvbiI6ImZvcm0iLCJzY2hlbWEiOnsiZGVzY3JpcHRpb24iOiIiLCJ0aXRsZSI6Ik5hbWUiLCJfdHlwZSI6InN0cmluZyJ9fV19LCJzYWxlc21lbl9yZXBvcnQiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL3Nob3BzL3NhbGVzbWVuX3JlcG9ydC8iLCJhY3Rpb24iOiJnZXQifSwic2hvcHNfcmVwb3J0Ijp7Il90eXBlIjoibGluayIsInVybCI6Ii9zaG9wcy9zaG9wc19yZXBvcnQvIiwiYWN0aW9uIjoiZ2V0In0sInJlYWQiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL3Nob3BzL3tpZH0vIiwiYWN0aW9uIjoiZ2V0IiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIHNob3AuIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fV19LCJ1cGRhdGUiOnsiX3R5cGUiOiJsaW5rIiwidXJsIjoiL3Nob3BzL3tpZH0vIiwiYWN0aW9uIjoicHV0IiwiZW5jb2RpbmciOiJhcHBsaWNhdGlvbi9qc29uIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIHNob3AuIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJuYW1lIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoiZm9ybSIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IiIsInRpdGxlIjoiTmFtZSIsIl90eXBlIjoic3RyaW5nIn19XX0sInBhcnRpYWxfdXBkYXRlIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9zaG9wcy97aWR9LyIsImFjdGlvbiI6InBhdGNoIiwiZW5jb2RpbmciOiJhcHBsaWNhdGlvbi9qc29uIiwiZmllbGRzIjpbeyJuYW1lIjoiaWQiLCJyZXF1aXJlZCI6dHJ1ZSwibG9jYXRpb24iOiJwYXRoIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiQSB1bmlxdWUgaW50ZWdlciB2YWx1ZSBpZGVudGlmeWluZyB0aGlzIHNob3AuIiwidGl0bGUiOiJJRCIsIl90eXBlIjoiaW50ZWdlciJ9fSx7Im5hbWUiOiJuYW1lIiwibG9jYXRpb24iOiJmb3JtIiwic2NoZW1hIjp7ImRlc2NyaXB0aW9uIjoiIiwidGl0bGUiOiJOYW1lIiwiX3R5cGUiOiJzdHJpbmcifX1dfSwiZGVsZXRlIjp7Il90eXBlIjoibGluayIsInVybCI6Ii9zaG9wcy97aWR9LyIsImFjdGlvbiI6ImRlbGV0ZSIsImZpZWxkcyI6W3sibmFtZSI6ImlkIiwicmVxdWlyZWQiOnRydWUsImxvY2F0aW9uIjoicGF0aCIsInNjaGVtYSI6eyJkZXNjcmlwdGlvbiI6IkEgdW5pcXVlIGludGVnZXIgdmFsdWUgaWRlbnRpZnlpbmcgdGhpcyBzaG9wLiIsInRpdGxlIjoiSUQiLCJfdHlwZSI6ImludGVnZXIifX1dfX19')
window.schema = codec.decode(coreJSON)