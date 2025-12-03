import 'package:flutter/material.dart';

/// A simple code editor widget with syntax highlighting
class CodeEditor extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;

  const CodeEditor({
    super.key,
    required this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0D1117),
      child: Stack(
        children: [
          // Line numbers
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: 48,
            child: Container(
              color: const Color(0xFF161B22),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final lineCount = '\n'
                          .allMatches(controller.text)
                          .length +
                      1;
                  return ListView.builder(
                    itemCount: lineCount,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 20,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 12),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          // Code area
          Positioned.fill(
            left: 48,
            child: TextField(
              controller: controller,
              readOnly: readOnly,
              maxLines: null,
              expands: true,
              style: const TextStyle(
                fontFamily: 'JetBrains Mono',
                fontSize: 13,
                color: Colors.white,
                height: 1.54,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(12),
              ),
            ),
          ),
          // Read-only indicator
          if (readOnly)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.lock, size: 12, color: Colors.orange),
                    SizedBox(width: 4),
                    Text(
                      'Built-in (Read Only)',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
