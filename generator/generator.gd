extends VoxelGeneratorScript

const HeightmapCurve = preload("./heightmap_curve.tres");

const _CHANNEL = VoxelBuffer.CHANNEL_TYPE;

func _init():
    pass;

func _generate_block(buffer: VoxelBuffer, origin_in_voxels: Vector3, _lod: int):
    if origin_in_voxels.y > int(HeightmapCurve.max_value):
        buffer.fill(0, _CHANNEL);
    else:
        buffer.fill(1, _CHANNEL);

    buffer.optimize();