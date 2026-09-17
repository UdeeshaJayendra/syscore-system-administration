# Disk Space Troubleshooting

## Scenario

A controlled disk-space problem was simulated by creating two temporary 100 MB test files.

## Investigation

The root filesystem was checked with `df -h /`.

Directory usage was investigated with `du -h --max-depth=2 troubleshooting-lab 2>/dev/null | sort -h`.

Large files were identified using `find troubleshooting-lab -type f -size +50M -exec ls -lh {} \\;`.

Two large files were identified:

- `test-file-01.img` — 100 MB
- `test-file-02.img` — 100 MB

## Resolution

The temporary test files were removed and the troubleshooting lab was deleted.

## Verification

The root filesystem was checked again with `df -h /` and remained at approximately 32% usage.

## Troubleshooting Process

Check Filesystem → Find Large Directories → Identify Large Files → Remove Unnecessary Files → Verify Disk Usage

## Evidence

- `24-syscore-troubleshooting-disk-space-investigation.png`
